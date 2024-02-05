import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/remote/firestore/firestore_api.dart';

part 'schools_remote_repository.g.dart';

@riverpod
SchoolsRemoteRepository schoolsRemoteRepository(
    SchoolsRemoteRepositoryRef ref) {
  final FirebaseFirestore firestoreAPI = ref.watch(firestoreAPIProvider);
  final CollectionReference<SchoolModel> schoolCollectionReference =
      firestoreAPI.collection('schools').withConverter(
            fromFirestore: (DocumentSnapshot<Map<String, dynamic>> doc, _) =>
                SchoolModel.fromFirestore(doc),
            toFirestore: (SchoolModel school, _) => school.toFirestore(),
          );

  return SchoolsRemoteRepository(schoolCollectionReference);
}

// ignore: one_member_abstracts
abstract class SchoolsRemoteRepositoryAPI {
  Future<List<SchoolModel>> get({required DateTime updateAt});
}

class SchoolsRemoteRepository extends SchoolsRemoteRepositoryAPI {
  SchoolsRemoteRepository(this._db) : super();

  final CollectionReference<SchoolModel?> _db;

  @override
  Future<List<SchoolModel>> get({required DateTime updateAt}) async {
    final QuerySnapshot<SchoolModel?> schools =
        await _db.where('updateAt', isGreaterThan: updateAt).get();

    return schools.docs
        .map((QueryDocumentSnapshot<SchoolModel?> doc) => doc.data())
        .whereType<SchoolModel>()
        .toList();
  }
}
