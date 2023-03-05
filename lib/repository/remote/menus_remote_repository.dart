import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/repository/remote/firestore_database.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';

final Provider<MenusRemoteRepository> menusRemoteRepositoryProvider =
    Provider<MenusRemoteRepository>((ProviderRef<MenusRemoteRepository> ref) {
  final FirebaseFirestore firestoreDatabase = ref.watch(firestoreDatabaseProvider);
  return MenusRemoteRepository(firestoreDatabase.collection('menus'), ref);
});

// ignore: one_member_abstracts
abstract class MenusRemoteRepositoryBase {
  Future<List<dynamic>> get({required DateTime updateAt});
}

class MenusRemoteRepository extends MenusRemoteRepositoryBase {
  MenusRemoteRepository(this._db, this._ref);

  final CollectionReference<Map<String, dynamic>> _db;
  final Ref _ref;

  @override
  Future<List<dynamic>> get({required DateTime updateAt}) async {
    final int schoolId = await _ref.read(userProvider.notifier).getParentId();
    final QuerySnapshot<Map<String, dynamic>> firestoreData = await _db
        .where('schoolId', isEqualTo: schoolId)
        .where('updateAt', isGreaterThan: updateAt)
        .get();

    return firestoreData.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data()).toList();
  }
}
