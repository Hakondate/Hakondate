class ConnectionException implements Exception {
  const ConnectionException(this.message);

  final String message;

  @override
  String toString() => 'ConnectionException: $message';
}
