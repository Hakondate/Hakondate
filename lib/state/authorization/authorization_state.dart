import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_state.freezed.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    @Default('') String authorizationCode,
  }) = _AuthorizationState;

  factory AuthorizationState.noAuthorizationRequired() => const AuthorizationState();
}
