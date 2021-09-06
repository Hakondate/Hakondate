import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate_v2/state/navigator/app_navigator_state.dart';

final routerProvider =
    StateNotifierProvider<AppNavigatorStateNotifier, AppNavigatorState>(
        (ref) => AppNavigatorStateNotifier());

class AppNavigatorStateNotifier extends StateNotifier<AppNavigatorState> {
  AppNavigatorStateNotifier() : super(AppNavigatorState());

  void handleFromSplash({bool toTerms = false}) =>
      state = state.copyWith(isInitialLoading: false, isShowTerms: toTerms);

  void handleFromTerms() =>
      state = state.copyWith(isShowTerms: false, isShowSignup: true);

  void handleFromSignup() =>
      state = state.copyWith(isShowSignup: false, isShowConfirmation: true);

  void handleFromConfirmation({bool toSignup = false}) =>
      state = state.copyWith(isShowSignup: toSignup, isShowConfirmation: false);

  void handleFromHome({bool toSetting = false, bool toAboutUs = false, bool toHelp = false}) =>
      state = state.copyWith(isShowSetting: toSetting, isShowAboutUs: toAboutUs, isShowHelp: toHelp);
}
