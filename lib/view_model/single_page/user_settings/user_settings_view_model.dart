import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';

part 'user_settings_view_model.g.dart';

@riverpod
class UserSettingsViewModel extends _$UserSettingsViewModel {
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

  Future<List<int>> listParentIds() async {
    final List<UserModel> users = await state.maybeWhen(
      data: (UserSettingsState state) => state.users!,
      orElse: () async => ref.read(usersLocalRepositoryProvider).list(),
    );

    return ref.read(schoolsLocalRepositoryProvider).listParentIdsByUsers(users);
  }

  Future<List<UserModel>> getUsersFromLocalRepository() {
    final UsersLocalRepository usersLocalRepository =
        ref.read(usersLocalRepositoryProvider);
    return usersLocalRepository.list();
  }

  Future<void> updateUsers() async {
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

  Future<UserModel> getUserById(int id) async {
    return ref.read(usersLocalRepositoryProvider).getById(id);
  }
}
