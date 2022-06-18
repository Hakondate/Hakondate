class LocalDirectoryException implements Exception {
  const LocalDirectoryException(this.message);

  final String message;

  @override
  String toString() => 'LocalDirectoryException: $message';
}
