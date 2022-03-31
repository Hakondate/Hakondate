import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/state/calendar/calendar_state.dart';

final calendarProvider = StateNotifierProvider<CalendarViewModel, CalendarState>(
        (ref) => CalendarViewModel());

class CalendarViewModel extends StateNotifier<CalendarState> {
  CalendarViewModel() : super(const CalendarState());

  Future<void> onRefresh() async {}
}
