import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/repository/remote/firestore_database.dart';

final Provider<SchoolsRemoteRepository> schoolsRemoteRepositoryProvider =
    Provider<SchoolsRemoteRepository>((ProviderRef<SchoolsRemoteRepository> ref) {
  final FirebaseFirestore firestoreDatabase = ref.watch(firestoreDatabaseProvider);
  return SchoolsRemoteRepository(firestoreDatabase.collection('schools'));
});

// ignore: one_member_abstracts
abstract class SchoolsRemoteRepositoryBase {
  Future<List<dynamic>> get({required DateTime updateAt});
}

class SchoolsRemoteRepository extends SchoolsRemoteRepositoryBase {
  SchoolsRemoteRepository(this._db) : super();

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<List<dynamic>> get({required DateTime updateAt}) async {
    final QuerySnapshot<Map<String, dynamic>> firestoreData =
        await _db.where('updateAt', isGreaterThan: updateAt).get();

    return firestoreData.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data()).toList();
  }
}
