import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakondate/model/menu/menu_model.dart';

part 'daily_state.freezed.dart';

@freezed
class DailyState with _$DailyState {
  const factory DailyState({
    required DateTime focusedDay,
    @Default(MenuModel.noData()) MenuModel menu,
    @Default(true) bool isFetching,
  }) = _DailyState;
}
