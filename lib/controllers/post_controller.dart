import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:google_classroom/libraries/custom_exceptions.dart';
import 'package:google_classroom/libraries/exceptions.dart';
import 'package:google_classroom/services/api_dio.dart';

class PostController extends GetxController {
  var counter = 0.obs;
  var float = 0.0.obs;
  var string = "".obs;
  var intList = [].obs;
  var todos = "".obs;
  var isLoading = false.obs;
  ApiManager http = new ApiManager();

  @override
  void onInit() {
    string.value = "malu";
    intList.add(1);
    super.onInit();
  }

  void increment() {
    counter++;
    float.value += 0.4;
    string.value = "alu";
    intList.add(counter.value);
  }

  dynamic fetchApi() async {
    try {
      isLoading(true);
      var response = await http.get("users/2");
      isLoading(false);
      todos(response.data.toString());
    } on DioError catch (e) {
      String message = DioExceptions.fromDioError(e).toString();
      Get.snackbar("Error", message);
      todos("");
    } finally {
      isLoading(false);
    }
  }
}
