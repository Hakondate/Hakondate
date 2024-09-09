import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:hakondate/model/school/school_model.dart';
import 'package:hakondate/repository/local/sqlite/schools/schools_local_repository.dart';
import 'package:hakondate/repository/remote/authorization/authorization_remote_repository.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/authorization/authorization_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:hakondate/view_model/single_page/signup/signup_view_model.dart';

part 'authorization_view_model.g.dart';

@riverpod
// StatefullWidgetかflutter_hooksに変更することが推奨されているため，hooksが導入されるまでの暫定的な対応
// https://github.com/rrousselGit/riverpod/discussions/2680
// ignore: unsupported_provider_value
class AuthorizationCodeController extends _$AuthorizationCodeController {
  @override
  TextEditingController build() => TextEditingController();
}

@riverpod
class AuthorizationViewModel extends _$AuthorizationViewModel {
  @override
  Future<AuthorizationState> build() async {
    final SchoolModel school;
    if (routemaster.currentConfiguration!.path.startsWith('/home/authorization')) {
      final int id = ref.watch(userViewModelProvider).currentUser!.schoolId;
      school = await ref.read(schoolsLocalRepositoryProvider).getById(id);
    } else {
      school = ref.watch(signupViewModelProvider).value!.school!;
    }
    return AuthorizationState(
      school: school,
    );
  }

  Future<bool> authorize(String authorizationKey) async {
    if (state is! AsyncData) return false;

    final AuthorizationState data = state.value!;
    state = const AsyncLoading<AuthorizationState>();

    final TextEditingController controller = ref.watch(authorizationCodeControllerProvider);

    final AuthorizationResult result =
        await ref.watch(authorizationRemoteRepositoryProvider).checkAuthorizationCode(data.school.id, authorizationKey);

    if (!result.authorizationSucceeded) {
      controller.text = '';
      state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: result.message));

      return false;
    }

    if (routemaster.currentConfiguration!.path.startsWith('/home/authorization')) {
      await ref.read(userViewModelProvider.notifier).updateAuthorization();
    }

    state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: '認証に成功しました'));
    return true;
  }

  Future<void> onCodeChanged() async {
    state.whenData((AuthorizationState data) {
      state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: ''));
    });
  }
}
