import 'package:dio/dio.dart';
import 'package:google_classroom/libraries/custom_exceptions.dart';
import 'package:google_classroom/libraries/statusCodes.dart';

class ApiManager {
  late Dio _dio;
  final baseUrl = "https://reqres.in/api/";
  final Map<String, String> headers = {
    'Authorization': '',
    'Accept': 'application/json',
    "Content-Type": "application/json"
  };

  ApiManager() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
    ));
  }

  Future<Response> get(String endpoint) async {
    late Response response;
    try {
      response = await _dio.get(endpoint);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
