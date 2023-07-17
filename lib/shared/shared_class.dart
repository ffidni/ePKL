class ApiErrorException implements Exception {
  final String message;
  final Map<String, dynamic>? data;

  ApiErrorException(this.message, {this.data});

  @override
  String toString() {
    return message;
  }
}
