import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/state/app_statics/app_statics_state.dart';

part 'app_statics_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppStaticsViewModel extends _$AppStaticsViewModel {
  late SharedPreferences _prefs;
  Timer? _timer;

  @override
  FutureOr<AppStaticsState> build() async {
    debugPrint('build');
    _prefs = await SharedPreferences.getInstance();

    ref.onDispose(() {
      _timer?.cancel();
      _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMin, state.value!.usageTimeInMin);
      debugPrint('usageTimeInMin: ${state.value!.usageTimeInMin}');
    });
    final String? lastPopupStr = _prefs.getString(AppKey.sharedPreferencesKey.lastPopup);
    final int? usageTimeInMinWhenLastPopuped = _prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInMin);
    // ここでprefsからデータ読み書きする
    final AppStaticsState initialState = AppStaticsState(
      openCount: (_prefs.getInt(AppKey.sharedPreferencesKey.appOpenCount) ?? 0) + 1,
      usageTimeInMin: _prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInMin) ?? 0,
      lastPopup: lastPopupStr != null? DateTime.parse(lastPopupStr) : null,
      usageTimeInMinWhenLastPopuped: usageTimeInMinWhenLastPopuped,
    );
    await _prefs.setInt(AppKey.sharedPreferencesKey.appOpenCount, initialState.openCount);

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _incrementUsageTimeInMin();
    });
    debugPrint('initialState: $initialState');

    return initialState;
  }

  Future<void> _incrementUsageTimeInMin() async {
    state = AsyncData<AppStaticsState>(state.value!.copyWith(usageTimeInMin: state.value!.usageTimeInMin + 1));
    await _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMin, state.value!.usageTimeInMin);
  }

  Future<void> setLastPopup() async {
    if (state.hasValue) {
      final DateTime now = DateTime.now();
      await _prefs.setString(AppKey.sharedPreferencesKey.lastPopup, now.toIso8601String());
      await _prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMinWhenLastPopup, state.value!.usageTimeInMin);
      state = AsyncData<AppStaticsState>(state.value!.copyWith(lastPopup: now, usageTimeInMinWhenLastPopuped: state.value!.usageTimeInMin));
    } else {
      debugPrint('AppStatics State is not initialized yet');
    }
  }
}
