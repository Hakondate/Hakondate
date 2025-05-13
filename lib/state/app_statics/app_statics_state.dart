import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/state/user/user_state.dart';

part 'app_statics_state.freezed.dart';

@freezed
class AppStaticsState with _$AppStaticsState {
  const factory AppStaticsState({@Default(0) int usageTimeInMin, @Default(0) int openCount}) = _AppStaticsState;
}
