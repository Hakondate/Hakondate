import 'package:flutter/foundation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/state/app_preferences/app_preferences_state.dart';

part 'app_preferences_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppPreferencesViewModel extends _$AppPreferencesViewModel {
  late SharedPreferences _prefs;

  @override
  FutureOr<AppPreferencesState> build() async {
    _prefs = await SharedPreferences.getInstance();

    final bool isReviewPopupDenied = _prefs.getBool(AppKey.sharedPreferencesKey.isReviewPopupDeniedInPreferences) ?? false;

    return AppPreferencesState(isReviewPopupDenied: isReviewPopupDenied);
  }

  Future<void> setIsReviewPopupDenied({bool isReviewPopupDenied = true}) async {
    // state = state.copyWith(isReviewPopupDenied: isReviewPopupDenied);
    if (state.hasValue) {
      state = AsyncData<AppPreferencesState>(state.value!.copyWith(isReviewPopupDenied: isReviewPopupDenied));
      await _prefs.setBool(AppKey.sharedPreferencesKey.isReviewPopupDeniedInPreferences, isReviewPopupDenied);
    } else {
      debugPrint('AppPreferences State is not initialized yet');
    }
  }
}
