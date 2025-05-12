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

  Future<bool> authorize() async {
    if (state is! AsyncData) return false;

    final AuthorizationState data = state.value!;
    state = const AsyncLoading<AuthorizationState>();

    final AuthorizationResult result =
        await ref.watch(authorizationRemoteRepositoryProvider).checkAuthorizationCode(data.school.id, data.authorizationKey);

    if (!result.authorizationSucceeded) {
      state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: result.message));

      return false;
    }

    if (routemaster.currentConfiguration!.path.startsWith('/home/authorization')) {
      await ref.read(userViewModelProvider.notifier).updateAuthorization();
    }

    state = AsyncData<AuthorizationState>(data.copyWith(statusMessage: '成功しました'));
    return true;
  }

  Future<void> onCodeChanged(String value) async {
    state.whenData((AuthorizationState data) {
      state = AsyncData<AuthorizationState>(data.copyWith(authorizationKey: value, statusMessage: ''));
    });
  }
}
