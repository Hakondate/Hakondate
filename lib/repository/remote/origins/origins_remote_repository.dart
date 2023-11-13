import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/origin/origin_model.dart';
import 'package:hakondate/repository/remote/firestore/firestore_api.dart';
import 'package:hakondate/util/exception/firestore_exception.dart';

part 'origins_remote_repository.g.dart';

@Riverpod(keepAlive: true)
OriginsRemoteRepository originsRemoteRepository(OriginsRemoteRepositoryRef ref) {
  final FirebaseFirestore firestoreAPI = ref.watch(firestoreAPIProvider);
  return OriginsRemoteRepository(firestoreAPI.collection('origins'));
}

abstract class OriginsRemoteRepositoryAPI {
  Future<OriginModel> getById({String? id});
  Future<List<OriginModel>> list();
}

class OriginsRemoteRepository extends OriginsRemoteRepositoryAPI {
  OriginsRemoteRepository(this._db);

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<OriginModel> getById({String? id}) async {
    id ??= DateFormat('yyyyMM').format(DateTime.now());
    final DocumentSnapshot<Map<String, dynamic>> doc = await _db.doc(id).get();

    if (!doc.exists) {
      throw FirestoreException('Document $id does not exist on the database');
    }

    return OriginModel.fromFirestore(doc);
  }
  
  @override
  Future<List<OriginModel>> list() async {
    final QuerySnapshot<Map<String, dynamic>> firestoreData = await _db.orderBy('date', descending: true).get();

    return firestoreData.docs.map(OriginModel.fromFirestore).toList();
  }
}
