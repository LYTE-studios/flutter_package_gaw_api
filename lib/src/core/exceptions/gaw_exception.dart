class GawException implements Exception {
  final String? title;

  final String message;

  const GawException({
    required this.message,
    this.title,
  });

  @override
  String toString() {
    return message;
  }
}
