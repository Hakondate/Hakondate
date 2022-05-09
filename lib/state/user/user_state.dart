import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';

part 'user_state.freezed.dart';
part 'school_grade.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    UserModel? currentUser,
  }) = _UserState;
}
