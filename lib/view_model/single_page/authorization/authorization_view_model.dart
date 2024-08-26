import 'package:flutter/material.dart';
import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/repository/local/sqlite/users/users_local_repository.dart';
import 'package:hakondate/repository/remote/authorization/authorization_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'authorization_view_model.g.dart';

@riverpod
class AuthorizationCodeController extends _$AuthorizationCodeController {
  @override
  TextEditingController build() => TextEditingController();
}

@riverpod
class AuthorizationViewModel extends _$AuthorizationViewModel {
  @override
  Future<AuthorizationState> build() async {
    final int schoolId = ref.watch(userViewModelProvider).currentUser!.schoolId;
    final SchoolModel school = await ref.watch(schoolsLocalRepositoryProvider).getById(schoolId);

    return AuthorizationState(school: school);
  }

  Future<bool> authorize(String authorizationKey) async {
    if (state is! AsyncData) return false;

    final AuthorizationState data = state.value!;
    state = const AsyncLoading<AuthorizationState>();
    final TextEditingController controller = ref.watch(authorizationCodeControllerProvider);

    final bool res = await ref.watch(authorizationRemoteRepositoryProvider).checkAuthorizationCode(data.school.id, authorizationKey);
    debugPrint('res: $res');

    if (!res) {
      controller.text = '';
      state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: '認証に失敗しました'));
      debugPrint('failed');
      return false;
    }

    await ref.read(userViewModelProvider.notifier).authorize();
    state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: '認証に成功しました'));
    return true;
  }

  Future<void> cancel() async {
    state.whenData((AuthorizationState data) async {
      final int id = ref.watch(userViewModelProvider).currentUser!.id;
      await ref.read(usersLocalRepositoryProvider).delete(id);
      debugPrint('${await routemaster.pop()}');
    });
  }

  Future<void> onCodeChanged() async {
    state.whenData((AuthorizationState data) {
      state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: ''));
    });
  }
}
