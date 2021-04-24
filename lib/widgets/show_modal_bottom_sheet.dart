import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_classroom/screens/create_class.dart';
import 'package:google_classroom/screens/join_class.dart';

class CurvedModalBottomSheet {
  BuildContext contex;

  CurvedModalBottomSheet(this.contex);

  call() {
    showModalBottomSheet(
      context: contex,
      builder: (contex) {
        return Container(
          height: 100,
          color: Color(0xFF737373),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(contex).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text("Create class"),
                      onTap: () {
                        Get.back();
                        Get.to(CreateClassScreen());
                      },
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text("Join class"),
                      onTap: () {
                        Get.back();
                        Get.to(JoinClassScreen());
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
