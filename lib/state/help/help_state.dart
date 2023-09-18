import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/state/user/user_state.dart';

part 'help_state.freezed.dart';

@freezed
class HelpState with _$HelpState {
  const factory HelpState({
    required SchoolGrade schoolGrade,
  }) = _HelpState;
}
