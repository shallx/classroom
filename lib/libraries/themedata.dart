import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum ThemeProfile { light, dark }

ThemeData customTheme(ThemeProfile prof) {
  if (prof == ThemeProfile.light) {
    // Color _primaryColr = Colors.orange[400];

    return ThemeData(
        // scaffoldBackgroundColor: Colors.greenAccent[200],
        );
  }
  return ThemeData.dark();
}
