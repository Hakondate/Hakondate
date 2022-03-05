import 'dart:convert';

import 'package:flutter/services.dart';

class MenusRemoteRepository {
  MenusRemoteRepository();

  Future<bool> checkUpdate(int schoolId) async {
    return true;
  }

  Future<List<dynamic>> downloadMenus() async {
    // デバッグ用
    return json
        .decode(await rootBundle.loadString('assets/debug/demo_menus.json'));
  }
}
