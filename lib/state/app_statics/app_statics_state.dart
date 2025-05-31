import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_statics_state.freezed.dart';

@freezed
class AppStaticsState with _$AppStaticsState {
  const factory AppStaticsState({required int usageTimeInMin, required int openCount, required DateTime lastPopup}) = _AppStaticsState;
}
