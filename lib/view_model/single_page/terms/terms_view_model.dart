import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/router/routes.dart';
import 'package:hakondate/state/terms/terms_state.dart';
import 'package:hakondate/view_model/multi_page/user/user_view_model.dart';

part 'terms_view_model.g.dart';

@riverpod
class TermsViewModel extends _$TermsViewModel {
  @override
  TermsState build() => const TermsState();

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
