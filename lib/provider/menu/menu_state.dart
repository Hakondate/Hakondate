import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/menu/menu_model.dart';

part 'menu_state.freezed.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState({
    @Default(<MenuModel>[]) List<MenuModel> menus
  }) = _MenuState;
  const factory MenuState.loading() = _MenuStateLoding;
}