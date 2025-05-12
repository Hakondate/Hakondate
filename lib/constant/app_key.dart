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
}
