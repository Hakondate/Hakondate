import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/repository/remote/firestore_database.dart';

import 'package:hakondate/util/environment.dart';

final menusRemoteRepositoryProvider = Provider<MenusRemoteRepository>((ref) {
  final FirestoreDatabase firestoreDatabase = ref.read(firestoreDatabaseProvider.notifier);
  return MenusRemoteRepository(firestoreDatabase.menusCollection);
});

abstract class MenusRemoteRepositoryBase {
  Future<List<dynamic>> get({required int schoolId, DateTime? day});
}

class MenusRemoteRepository extends MenusRemoteRepositoryBase {
  MenusRemoteRepository(this._db) : super();

  final CollectionReference<Map<String, dynamic>> _db;

  @override
  Future<List<dynamic>> get({required int schoolId, DateTime? day}) async {
    // if (Environment.flavor == Flavor.dev) {
    //   return json.decode(await rootBundle.loadString('assets/debug/demo_menus.json'));
    // }

    final firestoreData = await _db.where('updateAt', isGreaterThan: day ?? DateTime(1970)).get();

    return [];
  }
}
