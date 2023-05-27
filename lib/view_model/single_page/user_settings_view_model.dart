import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/users_local_repository.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';

final AsyncNotifierProvider<UserSettingsViewModel, UserSettingsState>
    userSettingsProvider =
    AsyncNotifierProvider<UserSettingsViewModel, UserSettingsState>(
  UserSettingsViewModel.new,
);

class UserSettingsViewModel extends AsyncNotifier<UserSettingsState> {
  @override
  Future<UserSettingsState> build() async {
    final UsersLocalRepository usersLocalRepository =
        ref.read(usersLocalRepositoryProvider);
    final List<UserModel> users = await usersLocalRepository.getAll();

    return UserSettingsState(
      users: users,
    );
  }

  FutureOr<void> switchCurrentUser(UserModel nextUser) {
    
  }
}
