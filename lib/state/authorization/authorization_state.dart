import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';

part 'authorization_state.freezed.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    required SchoolModel school,
    @Default('') String statusMessage,
  }) = _AuthorizationState;
}
