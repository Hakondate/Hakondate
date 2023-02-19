import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/repository/remote/firestore_database.dart';

final schoolsRemoteRepositoryProvider = Provider<SchoolsRemoteRepository>((ref) {
  final FirebaseFirestore firestoreDatabase = ref.watch(firestoreDatabaseProvider);
  return SchoolsRemoteRepository(firestoreDatabase.collection('schools'));
});

abstract class SchoolsRemoteRepositoryBase {
  Future<List<dynamic>> get({required DateTime updateAt});
}

class SchoolsRemoteRepository extends SchoolsRemoteRepositoryBase {
  SchoolsRemoteRepository(this._db) : super();

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<List<dynamic>> get({required DateTime updateAt}) async {
    final firestoreData = await _db.where('updateAt', isGreaterThan: updateAt).get();

    return firestoreData.docs.map((doc) => doc.data()).toList();
  }
}
