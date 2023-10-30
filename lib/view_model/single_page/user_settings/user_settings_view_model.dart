import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/user/user_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/state/user_settings/user_settings_state.dart';

part 'user_settings_view_model.g.dart';

@riverpod
class UserSettingsViewModel extends _$UserSettingsViewModel {
  @override
  Future<UserSettingsState> build() async {
    final List<UserModel> users = await ref.watch(usersLocalRepositoryProvider).list();

    return UserSettingsState(
      users: users,
    );
  }

  Future<List<int>> listParentIds() async {
    final List<UserModel> users = await state.maybeWhen(
      orElse: () async => ref.read(usersLocalRepositoryProvider).list(),
      data: (UserSettingsState state) async => state.users!,
    );
    
    return ref.read(schoolsLocalRepositoryProvider).listParentIdsByUsers(users);
  }
}
