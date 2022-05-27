import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/repository/remote/firestore_database.dart';

final menusRemoteRepositoryProvider = Provider<MenusRemoteRepository>((ref) {
  final FirestoreDatabase firestoreDatabase = ref.read(firestoreDatabaseProvider.notifier);
  return MenusRemoteRepository(firestoreDatabase.menusCollection);
});

abstract class MenusRemoteRepositoryBase {
  Future<List<dynamic>> get({required int schoolId, required DateTime day});
}

class MenusRemoteRepository extends MenusRemoteRepositoryBase {
  MenusRemoteRepository(this._db) : super();

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<List<dynamic>> get({required int schoolId, required DateTime day}) async {
    final firestoreData = await _db
        .where('schoolId', isEqualTo: schoolId)
        .where('updateAt', isGreaterThan: day)
        .get();

    return firestoreData.docs.map((doc) => doc.data()).toList();
  }
}
