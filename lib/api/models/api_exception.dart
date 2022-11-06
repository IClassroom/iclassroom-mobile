class ApiException {
  String message;
  int statusCode;

  ApiException({required this.message, required this.statusCode});
}