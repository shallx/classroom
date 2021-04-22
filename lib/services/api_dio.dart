import 'package:dio/dio.dart';
import 'package:google_classroom/libraries/statusCodes.dart';

class ApiManager {
  late Dio _dio;
  final baseUrl = "https://jsonplaceholder.typicode.com/";
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
      if (response.data == {}) throw Exception("some error occured");
      return response;
    } on DioError catch (e) {
      if (e.type == DioErrorType.response) {
        return Response(
          statusCode: e.response!.statusCode,
          statusMessage: StatusCode.message(e.response!.statusCode),
          requestOptions: e.response!.requestOptions,
        );
      } else {
        throw Exception(e.message);
      }
    }
  }
}
