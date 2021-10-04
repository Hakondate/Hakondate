import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

class SchoolsRemoteRepository {
  SchoolsRemoteRepository();

  Future<bool> checkUpdate() async {
    return false;
  }

  Future<List<dynamic>> downloadAllSchool() async {
    // デバッグ用
    return json.decode(await rootBundle.loadString('assets/debug/demo_schools.json'));
  }

  Future<List<dynamic>> downloadUpdate() async {
    return [];
  }
}
