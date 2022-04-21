import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate_v2/model/menu/menu_model.dart';

part 'daily_state.freezed.dart';

@freezed
class DailyState with _$DailyState {
  const factory DailyState({
    required DateTime selectedDay,
    required DateTime focusedDay,
    required DateTime calendarTabFirstDay,
    required DateTime calendarTabLastDay,
    @Default(MenuModel.noData()) MenuModel menu,
    @Default(true) bool isFetching,
  }) = _DailyState;
}
