class SQLiteException implements Exception {
  const SQLiteException(this.message);

  final String message;

  @override
  String toString() => 'SQLiteException: $message';
}
