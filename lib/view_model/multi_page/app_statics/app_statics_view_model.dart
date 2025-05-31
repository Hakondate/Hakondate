import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hakondate/constant/app_key.dart';
import 'package:hakondate/state/app_statics/app_statics_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_statics_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppStaticsViewModel extends _$AppStaticsViewModel {
  late SharedPreferences prefs;
  Timer? timer;

  @override
  FutureOr<AppStaticsState> build() async {
    debugPrint('build');
    prefs = await SharedPreferences.getInstance();

    ref.onDispose(() {
      timer?.cancel();
      prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMin, state.value!.usageTimeInMin);
      debugPrint('usageTimeInMin: ${state.value!.usageTimeInMin}');
    });

    // ここでprefsからデータ読み書きする
    final AppStaticsState initialState = AppStaticsState(
      openCount: (prefs.getInt(AppKey.sharedPreferencesKey.appOpenCount) ?? 0) + 1,
      usageTimeInMin: prefs.getInt(AppKey.sharedPreferencesKey.usageTimeInMin) ?? 0,
      lastPopup: DateTime.parse(prefs.getString(AppKey.sharedPreferencesKey.lastPopup) ?? DateTime(1970).toIso8601String()),
    );
    await prefs.setInt(AppKey.sharedPreferencesKey.appOpenCount, initialState.openCount);

    // #TODO stateの名前を変更する
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      _incrementUsageTimeInMin();
    });
    debugPrint('initialState: $initialState');

    return initialState;
  }

  Future<void> _incrementUsageTimeInMin() async {
    state = AsyncData<AppStaticsState>(state.value!.copyWith(usageTimeInMin: state.value!.usageTimeInMin + 1));
    await prefs.setInt(AppKey.sharedPreferencesKey.usageTimeInMin, state.value!.usageTimeInMin);
    // #TODO remove this
    debugPrint('state: ${state.value!.usageTimeInMin}');
  }

  Future<void> setLastPopup() async {
    if (state.hasValue) {
      state = AsyncData<AppStaticsState>(state.value!.copyWith(lastPopup: DateTime.now()));
      await prefs.setString(AppKey.sharedPreferencesKey.lastPopup, state.value!.lastPopup.toIso8601String());
      // #TODO remove this
      debugPrint('openCount: ${state.value!.openCount}');
    } else {
      debugPrint('AppStatics State is not initialized yet');
    }
  }
}
