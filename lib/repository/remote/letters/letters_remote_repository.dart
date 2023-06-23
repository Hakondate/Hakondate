import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:hakondate/constant/firebase_apis.dart';

import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/repository/remote/firestorage/firestorage_api.dart';
import 'package:hakondate/util/exception/firestorage_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'letters_remote_repository.g.dart';

@Riverpod(keepAlive: true)
LettersRemoteRepository lettersRemoteRepository(LettersRemoteRepositoryRef ref) {
  final FirebaseStorage firestorageAPI = ref.watch(firestorageAPIProvider);
  return LettersRemoteRepository(firestorageAPI.ref().child('letters'));
}

abstract class LettersRemoteRepositoryAPI {
  Future<ListResult> getListResult({required String? pageToken});
  Future<List<LetterMetadataModel>> getLetterMetadataList({required List<Reference> items});
  Future<Uint8List> get({required String path});
}

class LettersRemoteRepository extends LettersRemoteRepositoryAPI {
  LettersRemoteRepository(this._db);

  final Reference _db;

  @override
  Future<ListResult> getListResult({required String? pageToken}) async {
    try {
      return await _db.list(
        ListOptions(
          maxResults: FirestorageConstant.maxResultsSize,
          pageToken: pageToken,
        ),
      );
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
  Future<List<LetterMetadataModel>> getLetterMetadataList({required List<Reference> items}) async {
    final List<LetterMetadataModel> letters = <LetterMetadataModel>[];
    await Future.forEach(items, (Reference item) async {
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
  }

  @override
  Future<Uint8List> get({required String path}) async {
    final Uint8List? pdfData = await _db.child(path).getData();

    if (pdfData == null) throw FirestorageException("'$path' is no data");

    return pdfData;
  }
}
