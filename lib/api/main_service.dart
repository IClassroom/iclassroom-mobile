import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:iclassroom/api/models/api_exception.dart';

class MainService {
  Map<String, String> headers = {
    'Authorization': 'Basic AMXALINDAN/ASDKMALKM123.12.123KMO',
  };

  Future<Map<String, dynamic>> get(String path, {String? host}) async {
    Uri uri = Uri.https(host ?? 'https://localhost:8080', path);
    http.Response response = await http.get(uri, headers: headers);
    return validateResponse(response);
  }

  Future<Map<String, dynamic>> post(
    String path, {
    String? host,
    Map<String, dynamic>? body,
  }) async {
    Uri uri = Uri.https(host ?? 'https://localhost:8080', path);
    http.Response response = await http.post(uri, body: body, headers: headers);
    return validateResponse(response);
  }

  Future<Map<String, dynamic>> put(
    String path, {
    String? host,
    Map<String, dynamic>? body,
  }) async {
    Uri uri = Uri.https(host ?? 'https://localhost:8080', path);
    http.Response response = await http.put(uri, body: body, headers: headers);
    return validateResponse(response);
  }

  Future<Map<String, dynamic>> delete(
    String path, {
    String? host,
    Map<String, dynamic>? body,
  }) async {
    Uri uri = Uri.https(host ?? 'https://localhost:8080', path);
    http.Response response = await http.delete(uri, body: body, headers: headers);
    return validateResponse(response);
  }

  Map<String, dynamic> validateResponse(http.Response response) {
    Map<String, dynamic> responseBody = jsonDecode(response.body)['result'];
    if (response.statusCode > 399) {
      throw ApiException(message: responseBody['message'], statusCode: response.statusCode);
    }
    return responseBody;
  }
}
