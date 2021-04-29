import 'package:flutter/material.dart';
import 'package:google_classroom/libraries/themedata.dart';
import 'package:google_classroom/widgets/bottom_nav.dart';
import 'package:google_classroom/widgets/drawer.dart';

class StreamScreen extends StatefulWidget {
  StreamScreen({Key? key}) : super(key: key);

  @override
  _StreamScreenState createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  Margin margin = StyleSheet().margin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.grey.shade700,
            ),
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey.shade700,
            ),
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
        ],
      ),
      drawer: ClassRoomDrawer(),
      bottomNavigationBar: CustomBottomNav(index: 0),
      body: ListView(
        padding: margin.allMargin,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF566E7A),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Padding(
              padding: margin.allMargin,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "MIT 523: Advanced Web Technology",
                    style: TextStyle(fontSize: 21, color: Colors.white),
                  ),
                  Text(
                    "MIT 3rd batch",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: margin.allMargin,
                    child: CircleAvatar(),
                  ),
                  Text(
                    "Share with your class",
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
            elevation: 1,
          ),
          SizedBox(
            height: margin.marginUnit,
          ),
          PostCard(margin: margin),
          SizedBox(
            height: margin.marginUnit,
          ),
          PostCard(margin: margin),
          SizedBox(
            height: margin.marginUnit,
          ),
          PostCard(margin: margin),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.margin,
  }) : super(key: key);

  final Margin margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(-1, -1),
          ),
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                margin.marginUnit, margin.marginUnit, 0, margin.marginUnit),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: margin.marginUnit,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr Md Forhad Rabbi",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Apr 19",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.grey.shade600,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                Container(
                  margin: margin.verticalMargin,
                  child: Text(
                    "Lecture: Slide",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.attachment_outlined,
                      color: Colors.grey.shade600,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "1 attachment",
                      style: StyleSheet().greyTextStyle,
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            height: 20,
            margin: margin.allMargin,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Add class comment",
                labelStyle: StyleSheet().greyTextStyle,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  gapPadding: 0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
