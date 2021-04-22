import 'package:flutter/material.dart';

void showCustomDialogue(BuildContext ctx, String title, String description) {
  showDialog(
    context: ctx,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(description),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Ok'),
          ),
        ],
      );
    },
  );
}
