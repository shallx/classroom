import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum ThemeProfile { light, dark }

ThemeData customTheme(ThemeProfile prof) {
  if (prof == ThemeProfile.light) {
    // Color _primaryColr = Colors.orange[400];
    Color _backgroundColor = Colors.white;

    ThemeData lightTheme = ThemeData.light();
    ThemeData darkTheme = ThemeData.dark();

    return ThemeData(
      // scaffoldBackgroundColor: Colors.greenAccent[200],
      appBarTheme: darkTheme.appBarTheme,
    );
  }
  return ThemeData.dark();
}
