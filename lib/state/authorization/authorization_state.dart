import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';

part 'authorization_state.freezed.dart';

@freezed
abstract class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({required SchoolModel school, @Default('') String authorizationKey, @Default('') String statusMessage}) =
      _AuthorizationState;
}
