import 'package:iclassroom/api/main_service.dart';
import 'package:iclassroom/api/models/api_exception.dart';

class AuthRepository {
  final MainService mainService = MainService();

  getStatus() async {
    await Future.delayed(const Duration(seconds: 1));
    throw ApiException(message: 'test', statusCode: 400);
  }
}