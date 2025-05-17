import 'package:hakondate/state/app_preferences/app_preferences_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_preferences_view_model.g.dart';

@riverpod
class AppPreferencesViewModel extends _$AppPreferencesViewModel {
  @override
  AppPreferencesState build() => const AppPreferencesState();

  void setIsReviewPopupADenied({bool isReviewPopupADenied = true}) {
    state = state.copyWith(isReviewPopupADenied: isReviewPopupADenied);
  }
}
