import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/user/user_model.dart';

part 'user_state.freezed.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required UserModel user
  }) = _UserState;
  const factory UserState.loading() = _UserStateLoding;
}