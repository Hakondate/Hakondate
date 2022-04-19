import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';

part 'calendar_state.freezed.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    @Default([]) List<MenuModel> menus,
    DateTime? oldestDay,
    DateTime? latestDay,
  }) = _CalendarState;
}
