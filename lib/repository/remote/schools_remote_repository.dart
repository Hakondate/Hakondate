import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final schoolsRemoteRepositoryProvider = Provider<SchoolsRemoteRepository>((ref) =>
    SchoolsRemoteRepository());

abstract class SchoolsRemoteRepositoryBase {
  Future<bool> checkUpdate();
  Future<List<dynamic>> downloadAllSchool();
  Future<List<dynamic>> downloadUpdate();
}

class SchoolsRemoteRepository extends SchoolsRemoteRepositoryBase {
  SchoolsRemoteRepository() : super();

  @override
  Future<bool> checkUpdate() async {
    return false;
  }

  @override
  Future<List<dynamic>> downloadAllSchool() async {
    // デバッグ用
    return json.decode(await rootBundle.loadString('assets/debug/demo_schools.json'));
  }

  @override
  Future<List<dynamic>> downloadUpdate() async {
    return [];
  }
}
