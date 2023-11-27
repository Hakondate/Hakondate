class FirestoreException implements Exception {
  const FirestoreException(this.message);

  final String message;

  @override
  String toString() => 'FirestoreException: $message';
}
