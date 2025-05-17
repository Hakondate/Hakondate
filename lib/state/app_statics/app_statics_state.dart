import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/state/user/user_state.dart';

part 'app_statics_state.freezed.dart';

@freezed
class AppStaticsState with _$AppStaticsState {
  const factory AppStaticsState({int? usageTimeInMin, int? openCount}) = _AppStaticsState;
}
