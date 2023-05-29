import 'dart:async';

import 'package:flutter/foundation.dart';
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
    final List<UserModel> users = await getUsersFromLocalRepository();
    for (final UserModel user in users) {
      debugPrint(user.name);
    }

    return UserSettingsState(
      users: users,
    );
  }

  Future<List<UserModel>> getUsersFromLocalRepository() {
    final UsersLocalRepository usersLocalRepository =
        ref.read(usersLocalRepositoryProvider);
    return usersLocalRepository.getAll();
  }

  Future<void> updateUsers() async {
    // ignore: always_specify_types
    state = const AsyncValue.loading();
    
    state = await AsyncValue.guard(() async {
        final List<UserModel> users = await getUsersFromLocalRepository();
        return UserSettingsState(
          users: users,
        );
    });
  }

  Future<void> deleteUser(int id) async {
    final UsersLocalRepository usersLocalRepository =
        ref.read(usersLocalRepositoryProvider);
    await usersLocalRepository.delete(id);
    await updateUsers();
  }
}
