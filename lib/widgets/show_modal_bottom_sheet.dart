import 'package:flutter/material.dart';

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
            child: Column(
              children: [
                ListTile(
                  title: Text("Create class"),
                ),
                ListTile(
                  title: Text("Join class"),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
