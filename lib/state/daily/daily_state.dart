import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate_v2/model/menu/daily_menu_model.dart';

part 'daily_state.freezed.dart';

@freezed
class DailyState with _$DailyState {
  const factory DailyState({
    required DateTime selectedDay,
    required DateTime focusedDay,
    required DateTime calendarTabFirstDay,
    required DateTime calendarTabLastDay,
    @Default(DailyMenuModel()) DailyMenuModel dailyMenu,
    @Default(true) bool isFetching,
  }) = _DailyState;
}
