import 'package:flutter/material.dart';

class GoogleLogo extends StatelessWidget {
  TextSpan _textSpan(String text, Color color) => TextSpan(
        text: text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontSize: 21,
          fontFamily: "Product Sans",
        ),
      );
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        _textSpan("G", Colors.blue),
        _textSpan("o", Colors.red),
        _textSpan("o", Colors.orange),
        _textSpan("g", Colors.blue),
        _textSpan("l", Colors.green),
        _textSpan("e", Colors.red),
        _textSpan(" Classroom", Colors.grey.shade600),
      ]),
    );
  }
}
