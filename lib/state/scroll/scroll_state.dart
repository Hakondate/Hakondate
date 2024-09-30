import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scroll_state.freezed.dart';

@freezed
class ScrollState with _$ScrollState {
  const factory ScrollState({
    required PageStorageBucket bucket,
  }) = _ScrollState;
}
//factory: シングルトンにする　同じインスタンスが複数作成されなくなる