import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:hakondate_v2/model/user/user_model.dart';

class MenusRemoteRepository {
  MenusRemoteRepository();

  Future<void> checkUpdate(UserModel user) async {}

  Future<List<dynamic>> downloadMenus() async {
    // デバッグ用
    return json.decode(await rootBundle.loadString('assets/debug/demo_menus.json'));
  }
}