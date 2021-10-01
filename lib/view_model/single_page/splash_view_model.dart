import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/state/splash/splash_state.dart';

final splashProvider = StateNotifierProvider<SplashViewModel, SplashState>((ref) => SplashViewModel());

class SplashViewModel extends StateNotifier<SplashState> {
  SplashViewModel() : super(const SplashState());

  void activeErrorDialog() => state = state.copyWith(isShowErrorDialog: true);
  void popErrorDialog() => state = state.copyWith(isShowErrorDialog: false);
}
