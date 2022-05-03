import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'linking_daily_calendar_state.freezed.dart';

@freezed
class LinkingDailyCalendarState with _$LinkingDailyCalendarState {
  const factory LinkingDailyCalendarState({
    required DateTime selectedDay,
    required DateTime calendarOldestDay,
    required DateTime calendarLatestDay,
  }) = _LinkingDailyCalendarState;
}
