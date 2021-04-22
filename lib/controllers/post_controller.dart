import 'package:get/get.dart';
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
      var response = await http.get("todos/300");
      isLoading(false);

      if (response.statusCode == 200) {
        todos(response.data.toString());
      } else {
        return response.statusMessage;
      }
    } catch (error) {
      isLoading(false);
      return error.toString();
    }
  }
}
