import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_state.freezed.dart';

@freezed
class TermsState with _$TermsState {
  const factory TermsState({
    @Default(false) bool isAgree,
  }) = _TermsState;
}
