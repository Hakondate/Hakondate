class SharedPreferencesException implements Exception {
  const SharedPreferencesException(this.message);

  final String message;

  @override
  String toString() => 'SharedPreferencesException: $message';
}
