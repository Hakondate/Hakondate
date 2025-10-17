import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_statistics_state.freezed.dart';

@freezed
abstract class AppStatisticsState with _$AppStatisticsState {
  const factory AppStatisticsState({
    required int usageTimeInSec,
    required int openCount,
    DateTime? lastPopUp,
    int? usageTimeInMinWhenLastPopUp,
  }) = _AppStatisticsState;

  const AppStatisticsState._();

  int get usageTimeInMin => (usageTimeInSec / 60).toInt();
}
