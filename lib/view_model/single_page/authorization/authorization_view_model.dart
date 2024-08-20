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

  Future<void> authorize() async {
    state.whenData((AuthorizationState data) async {
      state = const AsyncLoading<AuthorizationState>();

      // api call
      final bool res = await Future.delayed(const Duration(seconds: 1), () {
        return true;
      });

      // error handling
      if (!res) {
        state = AsyncError<AuthorizationState>(Exception('error'), StackTrace.current);
        return;
      }

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
