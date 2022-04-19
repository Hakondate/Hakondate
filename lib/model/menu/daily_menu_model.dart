import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';

part 'daily_menu_model.freezed.dart';

enum DailyStatus {
  noData,
  holiday,
  lunchesDay,
}

@freezed
class DailyMenuModel with _$DailyMenuModel {
  const factory DailyMenuModel({
    @Default(DailyStatus.noData) DailyStatus status,
    MenuModel? menu,
  }) = _DailyMenuModel;
}
