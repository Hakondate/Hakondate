import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/state/navigator/app_navigator_state.dart';

final routerProvider = StateNotifierProvider<AppNavigatorStateNotifier, AppNavigatorState>(
        (ref) => AppNavigatorStateNotifier());

class AppNavigatorStateNotifier extends StateNotifier<AppNavigatorState> {
  AppNavigatorStateNotifier() : super(AppNavigatorState());

  void handleFromSplash({bool isExistUser = true}) =>
      state = state.copyWith(isInitialLoading: false, isShowTerms: !isExistUser);

  void handleFromTerms() => state = state.copyWith(isShowTerms: false, isShowSignup: true);
}
