import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';

part 'user_settings_state.freezed.dart';

@freezed
class UserSettingsState with _$UserSettingsState {
  const factory UserSettingsState({
    List<UserModel>? users,
    UserModel? editingUser,
  }) = _UserSettingsState;
}
