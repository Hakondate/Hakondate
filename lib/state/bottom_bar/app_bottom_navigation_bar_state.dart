import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_bottom_navigation_bar_state.freezed.dart';

//TODO: タブの切り替えはこちらなのに、scrollToTopが各画面なのはおかしいから、実装を変える。よって、このStateもいらなくなる
@freezed
class AppBottomNavigationBarState with _$AppBottomNavigationBarState {
  const factory AppBottomNavigationBarState({
    required int tappedButtonIndex,
  }) = _AppBottomNavigationBarState;
}
