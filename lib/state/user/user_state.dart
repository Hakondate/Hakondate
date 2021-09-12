import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate_v2/model/school/school_model.dart';
import 'package:hakondate_v2/model/user/user_model.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(<UserModel>[]) List<UserModel> users,
    UserModel? currentUser,
    SchoolModel? school,
  }) = _UserState;
}
