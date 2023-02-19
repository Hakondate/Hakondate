import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/repository/remote/firestore_database.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';

final menusRemoteRepositoryProvider = Provider<MenusRemoteRepository>((ref) {
  final FirebaseFirestore firestoreDatabase = ref.watch(firestoreDatabaseProvider);
  return MenusRemoteRepository(firestoreDatabase.collection('menus'), ref.read);
});

abstract class MenusRemoteRepositoryBase {
  Future<List<dynamic>> get({required DateTime updateAt});
}

class MenusRemoteRepository extends MenusRemoteRepositoryBase {
  MenusRemoteRepository(this._db, this._reader);

  final CollectionReference<Map<String, dynamic>> _db;
  final Reader _reader;

  @override
  Future<List<dynamic>> get({required DateTime updateAt}) async {
    final int schoolId = await _reader(userProvider.notifier).getParentId();
    final firestoreData = await _db
        .where('schoolId', isEqualTo: schoolId)
        .where('updateAt', isGreaterThan: updateAt)
        .get();

    return firestoreData.docs.map((doc) => doc.data()).toList();
  }
}
