import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/repository/local/sqlite/menus/menus_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/util/app_unique_key/app_unique_key.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'common_function.g.dart';

@riverpod
//　説明
// ignore: deprecated_member_use_from_same_package
CommonFunction commonFunction(CommonFunctionRef ref) => CommonFunction(ref);

class CommonFunction {
  CommonFunction(this._ref);

  final Ref _ref;

  bool isSameDay(DateTime day1, DateTime day2) {
    return day1.year == day2.year && day1.month == day2.month && day1.day == day2.day;
  }

  Future<int> getIdByDay(DateTime day) async {
    final int parentId = await _ref.read(userViewModelProvider.notifier).getParentId();
    return day.year * 1000000 + day.month * 10000 + day.day * 100 + parentId;
  }

  Future<void> deleteAllData() async {
    if (Environment.flavor != Flavor.dev) return;

    _ref.read(appUniqueKeyProvider.notifier).restartApp();
    _ref.read(userViewModelProvider.notifier).signOut();

    await _ref.read(usersLocalRepositoryProvider).deleteAll();
    await _ref.read(menusLocalRepositoryProvider).deleteAll();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(AppKey.sharedPreferencesKey.currentUserId);
    await prefs.remove(AppKey.sharedPreferencesKey.agreedTermsDay);
  }

  DateTime getDayFromTimestamp(dynamic timestamp) {
    if (timestamp is! Timestamp) throw const FormatException('Error: timestamp is not "Timestamp"');

    return timestamp.toDate();
  }
}
