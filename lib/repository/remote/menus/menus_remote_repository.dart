import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/menu/menu_model.dart';
import 'package:hakondate/repository/remote/firestore/firestore_api.dart';
import 'package:hakondate/view_model/single_page/user_settings/user_settings_view_model.dart';

part 'menus_remote_repository.g.dart';

@Riverpod(keepAlive: true)
MenusRemoteRepository menusRemoteRepository(Ref ref) {
  final FirebaseFirestore firestoreAPI = ref.watch(firestoreAPIProvider);
  final CollectionReference<MenuModel> menuCollectionReference = firestoreAPI.collection('menus').withConverter(
        fromFirestore: (DocumentSnapshot<Map<String, dynamic>> doc, _) => MenuModel.fromFirestore(doc),
        toFirestore: (MenuModel? menu, _) => (menu != null) ? menu.toFirestore() : <String, Object>{},
      );

  return MenusRemoteRepository(menuCollectionReference, ref);
}

// 説明
// ignore: one_member_abstracts
abstract class MenusRemoteRepositoryAPI {
  Future<List<MenuModel>> get({required DateTime updateAt, required DateTime from});
}

class MenusRemoteRepository extends MenusRemoteRepositoryAPI {
  MenusRemoteRepository(this._db, this._ref);

  final CollectionReference<MenuModel> _db;
  final Ref _ref;

  @override
  Future<List<MenuModel>> get({required DateTime updateAt, required DateTime from}) async {
    final List<int> schoolIds = await _ref.read(userSettingsViewModelProvider.notifier).listParentIds();
    final QuerySnapshot<MenuModel> menus = await _db
        .where('schoolId', whereIn: schoolIds)
        .where('day', isGreaterThanOrEqualTo: from)
        .where('updateAt', isGreaterThan: updateAt)
        .get();

    return menus.docs.map((QueryDocumentSnapshot<MenuModel> doc) => doc.data()).toList();
  }
}
