import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/repository/local/schools_local_repository.dart';
import 'package:hakondate/repository/local/users_local_repository.dart';
import 'package:hakondate/util/app_unique_key.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';

final commonFunctionProvider = StateNotifierProvider<CommonFunction, void>((ref) => CommonFunction(ref.read));

class CommonFunction extends StateNotifier<void> {
  CommonFunction(this._reader) : super(null);

  final Reader _reader;

  bool isSameDay(DateTime day1, DateTime day2) {
    return day1.year == day2.year && day1.month == day2.month && day1.day == day2.day;
  }

  Future<int> getIdByDay(DateTime day) async {
    final int parentId = await _reader(userProvider.notifier).getParentId();
    return day.year * 1000000 + day.month * 10000 + day.day * 100 + parentId;
  }

  Future<void> deleteAllData() async {
    if (Environment.flavor != Flavor.dev) return;

    _reader(appUniqueKeyProvider.notifier).restartApp();
    _reader(userProvider.notifier).signOut();

    await _reader(usersLocalRepositoryProvider).deleteAll();
    await _reader(menusLocalRepositoryProvider).deleteAll();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(AppKey.sharedPreferencesKey.currentUserId);
    await prefs.remove(AppKey.sharedPreferencesKey.agreedTermsDay);
  }

  DateTime getDayFromTimestamp(dynamic timestamp) {
    if (timestamp is! Timestamp) throw const FormatException('Error: timestamp is not "Timestamp"');

    return timestamp.toDate();
  }
}
