import 'package:flutter/material.dart';
import 'package:hakondate/repository/remote/authorization/authorization_remote_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'authorization_view_model.g.dart';

@riverpod
class AuthorizationViewModel extends _$AuthorizationViewModel {
  @override
  Future<AuthorizationState> build() async {
    return const AuthorizationState();
  }

  Future<void> authorize(int schoolId, String authorizationKey) async {
    state.whenData((AuthorizationState data) async {
      state = const AsyncLoading<AuthorizationState>();

      final bool res = await ref.watch(authorizationRemoteRepositoryProvider).checkAuthorizationCode(schoolId, authorizationKey);
      debugPrint('res: $res');

      // if (!res) {
      //   state = AsyncError<AuthorizationState>(Exception('error'), StackTrace.current);
      //   return;
      // }

      await ref.read(userViewModelProvider.notifier).authorize();

      routemaster.replace('/splash');
    });
  }

  Future<void> cancel() async {
    state.whenData((AuthorizationState data) async {
      final int id = ref.watch(userViewModelProvider).currentUser!.id;
      await ref.read(usersLocalRepositoryProvider).delete(id);
      routemaster.replace('/signup');
    });
  }
}
