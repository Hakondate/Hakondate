import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/repository/remote/firestore_database.dart';

final schoolsRemoteRepositoryProvider = Provider<SchoolsRemoteRepository>((ref) {
  final FirestoreDatabase firestoreDatabase = ref.read(firestoreDatabaseProvider.notifier);
  return SchoolsRemoteRepository(firestoreDatabase.schoolsCollection);
});

abstract class SchoolsRemoteRepositoryBase {
  Future<List<dynamic>> get({required DateTime day});
}

class SchoolsRemoteRepository extends SchoolsRemoteRepositoryBase {
  SchoolsRemoteRepository(this._db) : super();

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<List<dynamic>> get({required DateTime day}) async {
    final firestoreData = await _db.where('updateAt', isGreaterThan: day).get();

    return firestoreData.docs.map((doc) => doc.data()).toList();
  }
}
