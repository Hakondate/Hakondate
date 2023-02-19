class ClassTypeException implements Exception {
  const ClassTypeException(this.message);

  final String message;

  @override
  String toString() => 'ClassTypeException: $message';
}
