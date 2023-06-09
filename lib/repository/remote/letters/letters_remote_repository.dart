import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:firebase_storage/firebase_storage.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/repository/remote/firestorage/firestorage_api.dart';
import 'package:hakondate/state/letter/letters_remote_repository_model.dart';
import 'package:hakondate/util/exception/firestorage_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'letters_remote_repository.g.dart';

abstract class LettersRemoteRepositoryAPI {
  Future<List<LetterMetadataModel>> getList();
  Future<Uint8List> get({required String path});
  void resetPageToken();
}

@Riverpod(keepAlive: true)
class LettersRemoteRepository extends _$LettersRemoteRepository implements LettersRemoteRepositoryAPI {
  late final Reference _db;

  @override
  LettersRemoteRepositoryModel build() {
    final FirebaseStorage firestorageAPI = ref.watch(firestorageAPIProvider);
    _db = firestorageAPI.ref().child('letters');
    return const LettersRemoteRepositoryModel(maxResults: 20);
  }

  int getMaxResultsSize() => state.maxResults;
  bool getIsEndListing() => state.isEndListing;

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
