import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_classroom/controllers/post_controller.dart';
import 'package:google_classroom/libraries/themedata.dart';
import 'package:google_classroom/screens/experimentOne.dart';
import 'package:google_classroom/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostController controller = Get.put(PostController());
  dynamic data = "";
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme(ThemeProfile.light),
      home: HomeScreen(),
    );
  }
}
