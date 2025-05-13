import 'package:hakondate/state/app_statics/app_statics_state.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_statics_view_model.g.dart';

@Riverpod(keepAlive: true)
class AppStaticsViewModel extends _$AppStaticsViewModel {
  SharedPreferences? prefs;
  @override
  AppStaticsState build() {
    return const AppStaticsState();
  }

  void incrementUsageTimeInMin() {
    state = state.copyWith(usageTimeInMin: state.usageTimeInMin + 1);
  }

  void incrementOpenCount() {
    state = state.copyWith(openCount: state.openCount + 1);
  }
}
