import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/repository/remote/firestorage_database.dart';
import 'package:hakondate/state/letter/letters_remote_repository_model.dart';
import 'package:hakondate/util/exception/firestorage_exception.dart';

final lettersRemoteRepositoryProvider = Provider<LettersRemoteRepository>((ref) {
  final FirebaseStorage firestorageDatabase = ref.watch(firestorageDatabaseProvider);
  return LettersRemoteRepository(firestorageDatabase.ref().child('letters'));
});

abstract class LettersRemoteRepositoryBase {
  Future<List<LetterMetadataModel>> getList();
  Future<Uint8List> get({required String path});
  void resetPageToken();
}

class LettersRemoteRepository extends StateNotifier<LettersRemoteRepositoryModel>
    implements LettersRemoteRepositoryBase {
  LettersRemoteRepository(this._db) : super(const LettersRemoteRepositoryModel(maxResults: 20));

  final Reference _db;

  @override
  Future<List<LetterMetadataModel>> getList() async {
    List<LetterMetadataModel> letters = [];
    try {
      final ListResult listResult = await _db.list(ListOptions(
        maxResults: state.maxResults,
        pageToken: state.pageToken,
      ));
      state = state.copyWith(
        pageToken: listResult.nextPageToken,
      );

      if (state.pageToken == null) {
        state = state.copyWith(
          isEndListing: true,
        );
      }

      await Future.forEach(listResult.items, (Reference item) async {
        final FullMetadata metadata = await item.getMetadata();
        // final int parentId = int.parse(metadata.customMetadata!['schoolId'] ?? '-1');
        //
        // if (parentId < 0) throw FirestorageException("${metadata.name}'s 'schoolId' is null");

        letters.add(LetterMetadataModel(
          title: metadata.name,
          path: metadata.fullPath,
          parentId: 1,
          updateAt: metadata.updated ?? DateTime(2019, 8, 1),
        ));
      });

      return letters;
    } on FirebaseException catch (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
      rethrow;
    } on FirestorageException catch (error, stack) {
      debugPrint(error.toString());
      debugPrint(stack.toString());
      rethrow;
    }
  }

  @override
  Future<Uint8List> get({required String path}) async {
    final Uint8List? pdfData = await _db.child(path.replaceAll('letters/', '')).getData();

    if (pdfData == null) throw FirestorageException("'$path' is no data");

    return pdfData;
  }

  @override
  void resetPageToken() => state = state.copyWith(
    pageToken: null,
    isEndListing: false,
  );
}
