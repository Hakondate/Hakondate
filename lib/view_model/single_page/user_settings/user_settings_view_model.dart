import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/model/user/user_model.dart';
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

  Future<List<int>> getParentIdList() async {
    final List<UserModel> users = await state.maybeWhen(
      orElse: () async => ref.read(usersLocalRepositoryProvider).list(),
      data: (UserSettingsState state) async => state.users!,
    );

    final List<int> parentIds = <int>[];

    for (final UserModel user in users) {
      final SchoolModel school = await ref.read(schoolsLocalRepositoryProvider).getById(user.schoolId);
      if (parentIds.contains(school.parentId)) continue;
      parentIds.add(school.parentId);
    }
    
    return parentIds;
  }
}
