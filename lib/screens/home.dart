import 'package:flutter/material.dart';
import 'package:google_classroom/libraries/themedata.dart';
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
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
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
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            padding: EdgeInsets.all(0),
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
                  print("Hello world");
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
