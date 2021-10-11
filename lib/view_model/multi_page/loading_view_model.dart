import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hakondate_v2/state/loading/loading_state.dart';

final loadingProvider = StateNotifierProvider<LoadingViewModel, LoadingState>(
    (ref) => LoadingViewModel());

class LoadingViewModel extends StateNotifier<LoadingState> {
  LoadingViewModel() : super(const LoadingState());

  void activeErrorDialog() => state = state.copyWith(isShowErrorDialog: true);
  void popErrorDialog() => state = state.copyWith(isShowErrorDialog: false);
}
