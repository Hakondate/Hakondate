// アンダースコアを用いた変数名をつけたいため
// ignore_for_file: library_private_types_in_public_api

class AppKey {
  static final _SharedPreferencesKey sharedPreferencesKey = _SharedPreferencesKey();
}

class _SharedPreferencesKey {
  final String migrateVersion = 'migrate_version';
  final String agreedTermsDay = 'agreed_terms_day';
  final String initializedDictionaryDay = 'initialized_dictionary_day';
  final String currentUserId = 'current_user_id';

  // AppStatics
  final String appOpenCount = 'app_open_count';
  final String usageTimeInMin = 'usage_time_in_min';
  final String lastPopup = 'last_popup';
  final String usageTimeInMinWhenLastPopup = 'usage_time_in_min_when_last_popup';

  // AppPreferences
  final String isReviewPopupDeniedInPreferences = 'is_review_popup_denied_in_preferences';
}
