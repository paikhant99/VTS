class ApiException implements Exception {
  final String message;
  final int errorCode;

  ApiException(this.message, this.errorCode);

  @override
  String toString() => 'Connection Exception: $message (Error Code: $errorCode)';
}
