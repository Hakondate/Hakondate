import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bottom_navigation_bar_state.freezed.dart';

@freezed
class AppBottomNavigationBarState with _$AppBottomNavigationBarState {
  const factory AppBottomNavigationBarState({
    int? tappedButtonIndex,
  }) = _AppBottomNavigationBarState;
}
