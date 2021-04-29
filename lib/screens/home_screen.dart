import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_classroom/libraries/themedata.dart';
import 'package:google_classroom/screens/stream_screen.dart';
import 'package:google_classroom/widgets/drawer.dart';
import 'package:google_classroom/widgets/show_modal_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Classroom"),
        actions: [
          CircleAvatar(),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("Refresh"),
                  value: "refresh",
                ),
                PopupMenuItem(
                  child: Text("Send Google Feedback"),
                  value: "New broadcast",
                ),
              ];
            },
          ),
        ],
      ),
      drawer: ClassRoomDrawer(),
      body: ListView(
        children: [
          Container(
            margin: StyleSheet().margin().allMargin,
            child: Material(
              color: Color(0xFF566E7A),
              borderRadius: BorderRadius.circular(7),
              child: InkWell(
                child: Padding(
                  padding: StyleSheet().margin().allMargin,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MIT 523: Advanced Web Tech...",
                            style: TextStyle(fontSize: 21, color: Colors.white),
                          ),
                          PopupMenuButton<String>(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.zero,
                            onSelected: (value) {
                              print(value);
                            },
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text("Unenroll"),
                                  value: "unenroll",
                                ),
                                PopupMenuItem(
                                  child: Text("Report abuse"),
                                  value: "report",
                                ),
                              ];
                            },
                          ),
                        ],
                      ),
                      Text(
                        "MIT 3rd batch",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Dr Md Forhad Rabbi",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Get.to(() => StreamScreen());
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CurvedModalBottomSheet(context).call();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
