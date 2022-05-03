import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate/state/daily/linking_daily_calendar_state.dart';
import 'package:hakondate/util/environment.dart';

final linkingDailyCalendarProvider =
    StateNotifierProvider<LinkingDailyCalendarViewModel, LinkingDailyCalendarState>(
        (_) => LinkingDailyCalendarViewModel());

class LinkingDailyCalendarViewModel extends StateNotifier<LinkingDailyCalendarState> {
  LinkingDailyCalendarViewModel() : super(LinkingDailyCalendarState(
    selectedDay: DateTime.now(),
    calendarOldestDay: DateTime(2019, 8, 1),
    calendarLatestDay: DateTime(
      DateTime.now().year,
      DateTime.now().month + 2,
      1,
    ).add(const Duration(seconds: -1)),
  )) {
    if (Environment.flavor == Flavor.dev) {
      state = state.copyWith(
        selectedDay: DateTime(2021, 7, 1),
      );
    }
  }

  void updateSelectedDay(DateTime day) => state = state.copyWith(selectedDay: day);
}
