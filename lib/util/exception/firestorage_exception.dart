class FirestorageException implements Exception {
  const FirestorageException(this.message);

  final String message;

  @override
  String toString() => 'FirestorageException: $message';
}
