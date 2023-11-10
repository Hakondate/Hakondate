import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/repository/remote/firestore/firestore_api.dart';

part 'schools_remote_repository.g.dart';

@riverpod
SchoolsRemoteRepository schoolsRemoteRepository(SchoolsRemoteRepositoryRef ref) {
  final FirebaseFirestore firestoreAPI = ref.watch(firestoreAPIProvider);
  final schoolCollectionReference = firestoreAPI.collection('schools').withConverter(
    fromFirestore: (DocumentSnapshot<Map<String, dynamic>> doc) => ,
    toFirestore: toFirestore,
  );
  return SchoolsRemoteRepository(firestoreAPI.collection('schools').withConverter(
    fromFirestore: fromFirestore,
    toFirestore: toFirestore,
  ));
}

// ignore: one_member_abstracts
abstract class SchoolsRemoteRepositoryAPI {
  Future<List<dynamic>> get({required DateTime updateAt});
}

class SchoolsRemoteRepository extends SchoolsRemoteRepositoryAPI {
  SchoolsRemoteRepository(this._db) : super();

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<List<dynamic>> get({required DateTime updateAt}) async {
    final QuerySnapshot<Map<String, dynamic>> firestoreData =
        await _db.where('updateAt', isGreaterThan: updateAt).get();

    return firestoreData.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data()).toList();
  }
}
