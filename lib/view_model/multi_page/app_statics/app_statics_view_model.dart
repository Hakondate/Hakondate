import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/state/app_statics/app_statics_state.dart';

part 'app_statics_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppStaticsViewModel extends _$AppStaticsViewModel {
  static const int _timerDurationInSec = 5;
  late SharedPreferences _prefs;
  Timer? _timer;

  @override
  FutureOr<AppStaticsState> build() async {
    _prefs = await SharedPreferences.getInstance();

    ref.onDispose(() {
      _timer?.cancel();
      _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInSec, state.value!.usageTimeInSec);
    });
    final String? lastPopupStr = _prefs.getString(AppKey.sharedPreferencesKey.lastPopup);
    final int? usageTimeInMinWhenLastPopuped = _prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInMinWhenLastPopup);

    final AppStaticsState initialState = AppStaticsState(
      openCount: (_prefs.getInt(AppKey.sharedPreferencesKey.appOpenCount) ?? 0) + 1,
      usageTimeInSec: _prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInSec) ?? 0,
      lastPopup: lastPopupStr != null? DateTime.parse(lastPopupStr) : null,
      usageTimeInMinWhenLastPopuped: usageTimeInMinWhenLastPopuped,
    );
    await _prefs.setInt(AppKey.sharedPreferencesKey.appOpenCount, initialState.openCount);

    _timer = Timer.periodic(const Duration(seconds: _timerDurationInSec), (Timer timer) {
      _incrementUsageTimeInSec();
    });

    return initialState;
  }

  Future<void> _incrementUsageTimeInSec() async {
    state = AsyncData<AppStaticsState>(state.value!.copyWith(usageTimeInSec: state.value!.usageTimeInSec + _timerDurationInSec));
    await _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInSec, state.value!.usageTimeInSec);
  }

  Future<void> setLastPopup() async {
    if (state.hasValue) {
      final DateTime now = DateTime.now();
      await _prefs.setString(AppKey.sharedPreferencesKey.lastPopup, now.toIso8601String());
      final int usageTimeInMin = (state.value!.usageTimeInSec / 60).toInt();
      await _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMinWhenLastPopup, usageTimeInMin);
      state = AsyncData<AppStaticsState>(state.value!.copyWith(lastPopup: now, usageTimeInMinWhenLastPopuped: usageTimeInMin));
    } else {
      debugPrint('AppStatics State is not initialized yet');
    }
  }
}
