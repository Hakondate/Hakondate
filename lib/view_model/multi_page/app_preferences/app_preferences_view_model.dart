import 'package:flutter/foundation.dart';
import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/state/app_preferences/app_preferences_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_preferences_view_model.g.dart';

@riverpod
class AppPreferencesViewModel extends _$AppPreferencesViewModel {
  late SharedPreferences prefs;

  @override
  FutureOr<AppPreferencesState> build() async {
    prefs = await SharedPreferences.getInstance();

    final bool isReviewPopupDenied = prefs.getBool(AppKey.sharedPreferencesKey.isReviewPopupDeniedInPreferences) ?? false;

    return AppPreferencesState(isReviewPopupDenied: isReviewPopupDenied);
  }

  void setIsReviewPopupDenied({bool isReviewPopupDenied = true}) {
    // state = state.copyWith(isReviewPopupDenied: isReviewPopupDenied);
    prefs.setBool(AppKey.sharedPreferencesKey.isReviewPopupDeniedInPreferences, isReviewPopupDenied);
    if (state.hasValue) {
      state = AsyncData<AppPreferencesState>(state.value!.copyWith(isReviewPopupDenied: isReviewPopupDenied));
    } else {
      debugPrint('AppPreferences State is not initialized yet');
    }
  }
}
