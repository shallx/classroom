import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_classroom/controllers/post_controller.dart';
import 'package:google_classroom/libraries/themedata.dart';
import 'package:google_classroom/screens/home_screen.dart';

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
    return Listener(
      onPointerDown: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: customTheme(ThemeProfile.light),
        home: HomeScreen(),
      ),
    );
  }
}
