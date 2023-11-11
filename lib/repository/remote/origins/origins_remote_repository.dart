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
  final CollectionReference<OriginModel?> originCollectionReference = firestoreAPI.collection('origins').withConverter(
    fromFirestore: (DocumentSnapshot<Map<String, dynamic>> doc, _) => OriginModel.fromFirestore(doc),
    toFirestore: (OriginModel? origin, _) => (origin != null) ? origin.toFirestore() : <String, Object>{},
  );
  return OriginsRemoteRepository(originCollectionReference);
}

abstract class OriginsRemoteRepositoryAPI {
  Future<OriginModel> getById({String? id});
  Future<List<OriginModel>> list();
}

class OriginsRemoteRepository extends OriginsRemoteRepositoryAPI {
  OriginsRemoteRepository(this._db);

  final CollectionReference<OriginModel?> _db;

  @override
  Future<OriginModel> getById({String? id}) async {
    id ??= DateFormat('yyyyMM').format(DateTime.now());
    final DocumentSnapshot<OriginModel?> doc = await _db.doc(id).get();

    if (!doc.exists) {
      throw FirestoreException('Document $id does not exist on the database');
    }

    return doc.data()!;
  }
  
  @override
  Future<List<OriginModel>> list() async {
    final QuerySnapshot<OriginModel?> origins = await _db.orderBy('date', descending: true).get();

    return origins.docs
              .map((QueryDocumentSnapshot<OriginModel?> doc) => doc.data())
              .whereType<OriginModel>()
              .toList();
  }
}
