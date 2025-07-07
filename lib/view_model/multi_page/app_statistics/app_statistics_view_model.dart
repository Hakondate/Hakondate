import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/state/app_statistics/app_statistics_state.dart';

part 'app_statistics_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppStatisticsViewModel extends _$AppStatisticsViewModel {
  static const int _timerDurationInSec = 5;
  late SharedPreferences _prefs;
  Timer? _timer;

  @override
  FutureOr<AppStatisticsState> build() async {
    _prefs = await SharedPreferences.getInstance();

    ref.onDispose(() {
      _timer?.cancel();
      _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInSec, state.value!.usageTimeInSec);
    });
    final String? lastPopupStr = _prefs.getString(AppKey.sharedPreferencesKey.lastPopup);
    final int? usageTimeInMinWhenLastPopuped = _prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInMinWhenLastPopup);

    final AppStatisticsState initialState = AppStatisticsState(
      openCount: (_prefs.getInt(AppKey.sharedPreferencesKey.appOpenCount) ?? 0) + 1,
      usageTimeInSec: _prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInSec) ?? 0,
      lastPopUp: lastPopupStr != null ? DateTime.parse(lastPopupStr) : null,
      usageTimeInMinWhenLastPopUp: usageTimeInMinWhenLastPopuped,
    );
    await _prefs.setInt(AppKey.sharedPreferencesKey.appOpenCount, initialState.openCount);

    _timer = Timer.periodic(const Duration(seconds: _timerDurationInSec), (Timer timer) {
      _incrementUsageTimeInSec();
    });

    return initialState;
  }

  Future<void> _incrementUsageTimeInSec() async {
    state = AsyncData<AppStatisticsState>(state.value!.copyWith(usageTimeInSec: state.value!.usageTimeInSec + _timerDurationInSec));
    await _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInSec, state.value!.usageTimeInSec);
  }

  Future<void> setLastPopup() async {
    if (state.hasValue) {
      final DateTime now = DateTime.now();
      await _prefs.setString(AppKey.sharedPreferencesKey.lastPopup, now.toIso8601String());
      final int usageTimeInMin = state.value!.usageTimeInMin;
      await _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMinWhenLastPopup, usageTimeInMin);
      state = AsyncData<AppStatisticsState>(state.value!.copyWith(lastPopUp: now, usageTimeInMinWhenLastPopUp: usageTimeInMin));
    } else {
      debugPrint('AppStatics State is not initialized yet');
    }
  }
}
