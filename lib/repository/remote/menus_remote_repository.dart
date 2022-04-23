import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/util/environment.dart';

final menusRemoteRepositoryProvider = Provider<MenusRemoteRepository>((ref) =>
    MenusRemoteRepository());

abstract class MenusRemoteRepositoryBase {
  Future<bool> checkUpdate(int schoolId);
  Future<List<dynamic>> downloadMenus();
}

class MenusRemoteRepository extends MenusRemoteRepositoryBase {
  MenusRemoteRepository() : super();

  @override
  Future<bool> checkUpdate(int schoolId) async {
    return true;
  }

  @override
  Future<List<dynamic>> downloadMenus() async {
    if (Environment.flavor == Flavor.dev) {
      return json.decode(await rootBundle.loadString('assets/debug/demo_menus.json'));
    }

    return [];
  }
}
