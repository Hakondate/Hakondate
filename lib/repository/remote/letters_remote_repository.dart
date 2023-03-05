import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/repository/remote/firestorage_database.dart';
import 'package:hakondate/state/letter/letters_remote_repository_model.dart';
import 'package:hakondate/util/exception/firestorage_exception.dart';

final Provider<LettersRemoteRepository> lettersRemoteRepositoryProvider =
    Provider<LettersRemoteRepository>((ProviderRef<LettersRemoteRepository> ref) {
  final FirebaseStorage firestorageDatabase = ref.watch(firestorageDatabaseProvider as AlwaysAliveProviderListenable<FirebaseStorage>);
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
    final List<LetterMetadataModel> letters = <LetterMetadataModel>[];
    try {
      final ListResult listResult = await _db.list(
        ListOptions(
          maxResults: state.maxResults,
          pageToken: state.pageToken,
        ),
      );
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
        final RegExp regExp = RegExp(r'pfx_\d+_schoolId_(\d+)_');
        final int parentId = int.parse(regExp.firstMatch(metadata.name)?.group(1) ?? '-1');

        if (parentId < 0) throw FirestorageException("${metadata.name}'s 'schoolId' is null");

        letters.add(
          LetterMetadataModel(
            title: metadata.name.replaceFirst(RegExp(r'pfx_\d+_schoolId_\d+_'), ''),
            path: metadata.fullPath.replaceFirst('letters/', ''),
            parentId: parentId,
            updateAt: metadata.updated ?? DateTime(2019, 8),
          ),
        );
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
    final Uint8List? pdfData = await _db.child(path).getData();

    if (pdfData == null) throw FirestorageException("'$path' is no data");

    return pdfData;
  }

  @override
  void resetPageToken() => state = state.copyWith(
    pageToken: null,
    isEndListing: false,
  );
}
