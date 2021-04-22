import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_classroom/controllers/post_controller.dart';

class ExperimentOne extends StatefulWidget {
  @override
  _ExperimentOneState createState() => _ExperimentOneState();
}

class _ExperimentOneState extends State<ExperimentOne> {
  PostController controller = Get.put(PostController());
  
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Obx(
        () => Scaffold(
          appBar: AppBar(
            title: Text("Flutter App"),
            centerTitle: true,
          ),
          body: (controller.isLoading.value)
              ? Center(child: CircularProgressIndicator())
              : Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Integer ${controller.counter.value}"),
                      Text("Float ${controller.float.value}"),
                      Text("String ${controller.string.value}"),
                      Text("IntList ${controller.intList.length}"),
                      Text("Class ${controller.counter.value}"),
                      Text(controller.todos.value),
                      ElevatedButton(
                        onPressed: () {
                          controller.increment();
                          // Get.snackbar("Hi", "What are you ding bro?");
                          // Get.defaultDialog(title: "I am a dialogue");
                        },
                        child: Text("Press Here"),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          var response = await controller.fetchApi();
                          if (response != null) {
                            Get.snackbar("Error!", response);
                          }
                        },
                        child: Text("Get Data"),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}