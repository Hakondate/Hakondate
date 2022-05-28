class SignInException implements Exception {
  const SignInException(this.message);

  final String message;

  @override
  String toString() => 'SignInException: $message';
}
