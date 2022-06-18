import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/terms/terms_state.dart';
import 'package:hakondate/state/user/user_state.dart';
import 'package:hakondate/view_model/multi_page/user_view_model.dart';

final termsProvider = StateNotifierProvider<TermsViewModel, TermsState>((ref) {
  final UserState user = ref.watch(userProvider);
  return TermsViewModel(user);
});

class TermsViewModel extends StateNotifier<TermsState> {
  TermsViewModel(this._user) : super(const TermsState());

  final UserState _user;

  void onTap() => state = state.copyWith(isAgree: !state.isAgree);

  Future<void> transition() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(AppKey.sharedPreferencesKey.agreedTermsDay, DateTime.now().millisecondsSinceEpoch);

    if (_user.currentUser != null) {
      return routemaster.replace('/splash');
    }

    routemaster.replace('/signup');
  }
}
