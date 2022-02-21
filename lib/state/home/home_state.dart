import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    DateTime? selectedDay,
    MenuModel? menu,
    @Default(-1) int status,  // -1:データ無し, 0:休み, 1:給食あり
    @Default(true) bool isFetching,
    ScrollController? scrollController,
  }) = _HomeState;
}
