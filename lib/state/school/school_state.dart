import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'school_state.freezed.dart';

@freezed
class SchoolState with _$SchoolState {
  const factory SchoolState() = _SchoolState;
}
