import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_navigator_state.freezed.dart';

@freezed
class HomeNavigatorState with _$HomeNavigatorState {
  const factory HomeNavigatorState({
    @Default(-1) int todayMenuId, // -1: データなし, 0: 給食が休み
    @Default(-1) int selectedMenuId,
    @Default(false) bool isShowMenuList,
    int? selectedDishId,
  }) = _HomeNavigatorState;
}
