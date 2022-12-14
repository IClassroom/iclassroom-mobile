import 'package:iclassroom/api/main_service.dart';
import 'package:iclassroom/api/models/api_exception.dart';
import 'package:iclassroom/api/models/user.dart';

class AuthRepository {
  User? user;

  final MainService mainService = MainService();

  getStatus() async {
    await Future.delayed(const Duration(seconds: 1));
    if (user == null) throw ApiException(message: 'Unatuthenticated', statusCode: 402);
  }

  doLogin() {
    user = User(id: 1, name: 'Yago Taveiros', email: 'ytaveiros@gmail.com');
  }

  doLogout() {
    user = null;
  }
}