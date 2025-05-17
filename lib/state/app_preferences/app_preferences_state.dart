import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_preferences_state.freezed.dart';

@freezed
class AppPreferencesState with _$AppPreferencesState {
  const factory AppPreferencesState({
    @Default(false) bool isReviewPopupADenied,
  }) = _AppPreferencesState;
}
