import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_statics_state.freezed.dart';

@freezed
abstract class AppStaticsState with _$AppStaticsState {
  const factory AppStaticsState({
    required int usageTimeInSec,
    required int openCount,
    DateTime? lastPopup,
    int? usageTimeInMinWhenLastPopuped,
  }) = _AppStaticsState;
}
