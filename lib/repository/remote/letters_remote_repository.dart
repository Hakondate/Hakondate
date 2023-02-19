import 'dart:typed_data';

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
}

class LettersRemoteRepository extends StateNotifier<LettersRemoteRepositoryModel>
    implements LettersRemoteRepositoryBase {
  LettersRemoteRepository(this._db) : super(const LettersRemoteRepositoryModel());

  final Reference _db;

  @override
  Future<List<LetterMetadataModel>> getList() async {
    List<LetterMetadataModel> letters = [];
    final ListResult listResult = await _db.list(ListOptions(
      maxResults: 30,
      pageToken: state.pageToken,
    ));

    state = state.copyWith(
      pageToken: listResult.nextPageToken,
      isNotNextPage: listResult.nextPageToken == null,
    );

    await Future.forEach(listResult.items, (Reference item) async {
      final FullMetadata metadata = await item.getMetadata();
      // final int lunchBlock = int.parse(metadata.customMetadata!['lunchBlock'] ?? '-1');

      // if (lunchBlock < 0) throw FirestorageException("${metadata.name}'s 'lunchBlock' is null");

      letters.add(LetterMetadataModel(
        title: metadata.name,
        path: metadata.fullPath,
        lunchBlock: 1,
        updateAt: metadata.updated ?? DateTime(2019, 8, 1),
      ));
    });

    return letters;
  }

  @override
  Future<Uint8List> get({required String path}) async {
    RegExp pattern = RegExp('letter/');
    String childPath = pattern.firstMatch(path)?.group(2) ?? '';
    final Uint8List? pdfData = await _db.child(childPath).getData();

    if (pdfData == null) throw FirestorageException("'$path' is no data");

    return pdfData;
  }
}
