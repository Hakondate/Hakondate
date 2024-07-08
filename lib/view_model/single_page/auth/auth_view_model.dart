import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/auth/auth_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AuthState build() => const AuthState(key: 'a');

  void onTap() => state = state.copyWith(isAgree: !state.isAgree);

  Future<void> transition() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppKey.sharedPreferencesKey.agreedTermsDay, DateTime.now().millisecondsSinceEpoch);

    if (ref.watch(userViewModelProvider).currentUser != null) {
      return routemaster.replace('/splash');
    }

    routemaster.replace('/signup');
  }
}
