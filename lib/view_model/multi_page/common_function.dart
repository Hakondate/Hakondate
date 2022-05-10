import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/menus_local_repository.dart';
import 'package:hakondate/repository/local/schools_local_repository.dart';
import 'package:hakondate/repository/local/users_local_repository.dart';
import 'package:hakondate/util/environment.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

final commonFunctionProvider = StateNotifierProvider<CommonFunction, void>((ref) => CommonFunction(ref.read));

class CommonFunction extends StateNotifier<void> {
  CommonFunction(this._reader) : super(null);

  final Reader _reader;

  bool isSameDay(DateTime day1, DateTime day2) {
    return day1.year == day2.year && day1.month == day2.month && day1.day == day2.day;
  }

  Future<int> getIdByDay(DateTime day) async {
    final UserModel? user = _reader(userProvider.notifier).state.currentUser;

    if (user == null) throw Exception('Current user does not exist');

    final SchoolModel school = await _reader(schoolsLocalRepositoryProvider).getById(user.schoolId);
    final int parentId = school.parentId;
    return day.year * 1000000 + day.month * 10000 + day.day * 100 + parentId;
  }

  Future<void> deleteAllData() async {
    if (Environment.flavor != Flavor.dev) return;

    await _reader(usersLocalRepositoryProvider).deleteAll();
    await _reader(menusLocalRepositoryProvider).deleteAll();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.remove();
  }
}
