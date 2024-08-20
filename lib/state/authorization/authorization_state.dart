import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_state.freezed.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    required TextEditingController authorizationCodeController,
    @Default('') String authorizationCode,
    @Default('') String statusMessage,
  }) = _AuthorizationState;
}
