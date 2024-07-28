import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/state/bottom_bar/app_bottom_navigation_bar_state.dart';
import 'package:hakondate/view/bottom_bar/app_bottom_navigation_bar.dart';

part 'app_bottom_navigation_bar_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppBottomNavigationBarViewModel extends _$AppBottomNavigationBarViewModel {
  @override
  AppBottomNavigationBarState build() {
    return AppBottomNavigationBarState();
  }

  void setTappedButtonIndex(int index) {
    state = state.copyWith(
      tappedButtonIndex: index,
    );
  }
}
