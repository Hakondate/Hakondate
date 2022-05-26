class ParametersException implements Exception {
  const ParametersException(this.message);

  final String message;

  @override
  String toString() => 'ParametersException: $message';
}
