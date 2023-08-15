import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/repository/remote/firestore/firestore_api.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'menus_remote_repository.g.dart';

@Riverpod(keepAlive: true)
MenusRemoteRepository menusRemoteRepository(MenusRemoteRepositoryRef ref) {
  final FirebaseFirestore firestoreAPI = ref.watch(firestoreAPIProvider);
  return MenusRemoteRepository(firestoreAPI.collection('menus'), ref);
}

// ignore: one_member_abstracts
abstract class MenusRemoteRepositoryAPI {
  Future<List<dynamic>> get({required DateTime updateAt});
}

class MenusRemoteRepository extends MenusRemoteRepositoryAPI {
  MenusRemoteRepository(this._db, this._ref);

  final CollectionReference<Map<String, dynamic>> _db;
  final Ref _ref;

  @override
  Future<List<dynamic>> get({required DateTime updateAt}) async {
    final List<int> schoolIds = await _ref.read(userViewModelProvider.notifier).getParentIds();
    final QuerySnapshot<Map<String, dynamic>> firestoreData = await _db
        .where('schoolId', whereIn: schoolIds)
        .where('updateAt', isGreaterThan: updateAt)
        .get();

    return firestoreData.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => doc.data()).toList();
  }
}
