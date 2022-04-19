import 'package:flutter/foundation.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/model/menu/daily_menu_model.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';
import 'package:hakondate_v2/model/user/user_model.dart';
import 'package:hakondate_v2/repository/local/menus_local_repository.dart';
import 'package:hakondate_v2/state/calendar/calendar_state.dart';
import 'package:hakondate_v2/view_model/multi_page/user_view_model.dart';

final calendarProvider = StateNotifierProvider<CalendarViewModel, CalendarState>((ref) {
  final UserViewModel userProviderReader = ref.read(userProvider.notifier);
  final MenusLocalRepository menusLocalRepository = ref.read(menusLocalRepositoryProvider);
  return CalendarViewModel(
    userProviderReader,
    menusLocalRepository,
  );
});

class CalendarViewModel extends StateNotifier<CalendarState> {
  CalendarViewModel(
    this._userProviderReader,
    this._menusLocalRepository,
  ) : super(const CalendarState()) {
    initialize();
  }

  final UserViewModel _userProviderReader;
  final MenusLocalRepository _menusLocalRepository;

  void initialize() async {
    final DateTime oldestDay = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      1,
    );
    final DateTime latestDay = DateTime(
      DateTime.now().year,
      DateTime.now().month + 2,
      1,
    ).add(const Duration(days: -1));

    await _updateMenus(
      oldestDay: oldestDay,
      latestDay: latestDay,
    );
  }

  Future<void> fetchPreviousMonth() async {
    try {
      final DateTime? oldestDay = state.oldestDay;

      if (oldestDay == null) throw Exception('Oldest day does not exist');

      await _updateMenus(
        oldestDay: DateTime(oldestDay.year, oldestDay.month - 1, 1),
      );
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  Future<void> _updateMenus({
    required DateTime oldestDay,
    DateTime? latestDay,
  }) async {
    try {
      final UserModel? user = _userProviderReader.state.currentUser;
      final DateTime? _latestDay = latestDay ?? state.latestDay;

      if (user == null) throw Exception('Current user does not exist');
      if (_latestDay == null) throw Exception('Latest day does not exist');

      final List<MenuModel> menus = await _menusLocalRepository.getSelectedPeriod(
        startDay: oldestDay,
        endDay: _latestDay,
        schoolId: user.schoolId,
      );

      state = state.copyWith(
        oldestDay: oldestDay,
        latestDay: _latestDay,
        menus: menus,
      );
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  int get itemCount {
    final DateTime? latestDay = state.latestDay;
    final DateTime? oldestDay = state.oldestDay;

    if (latestDay == null || oldestDay == null) return 0;

    return latestDay.difference(oldestDay).inDays + 1;
  }

  Future<DailyMenuModel> getDailyMenu(DateTime day) => _menusLocalRepository.getDailyMenuByDay(day);
}
