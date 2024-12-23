import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';

part 'user_settings_view_model.g.dart';

@Riverpod(keepAlive: true)
class UserSettingsViewModel extends _$UserSettingsViewModel {
  @override
  Future<UserSettingsState> build() async {
    final List<UserModel> users = await ref.read(usersLocalRepositoryProvider).list();

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

  Future<void> updateUsers() async {
    state = const AsyncLoading<UserSettingsState>();

    state = await AsyncValue.guard(() async {
      final List<UserModel> users = await ref.read(usersLocalRepositoryProvider).list();
      return UserSettingsState(
        users: users,
      );
    });
  }

  void setEditingUser(UserModel? editingUser) {
    state.whenData(
      (UserSettingsState data) {
        state = AsyncData<UserSettingsState>(
          data.copyWith(
            editingUser: editingUser,
          ),
        );
      },
    );
  }

  Future<void> deleteUser(int id) async {
    await ref.read(usersLocalRepositoryProvider).delete(id);
    await updateUsers();
  }
}
