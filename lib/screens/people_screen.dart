import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_classroom/data/students.dart';
import 'package:google_classroom/libraries/themedata.dart';
import 'package:google_classroom/widgets/drawer.dart';

class PeopleScreen extends StatefulWidget {
  PeopleScreen({Key? key}) : super(key: key);

  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  Margin margin = StyleSheet().margin();
  List<Student> students = Students().list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MIT 523 Advanced Web Tech..."),
        actions: [
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer_outlined),
            label: "Stream",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: "Classwork",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "People",
          ),
        ],
      ),
      body: ListView(
        padding: margin.allMargin,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Teachers",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: margin.marginUnit,
              ),
              Divider(
                color: Colors.blue.shade800,
              ),
              SizedBox(
                height: 7,
              ),
              StudentCard(margin: margin),
              SizedBox(
                height: 80,
              ),
              Container(
                child: Text(
                  "Classmates",
                  style: TextStyle(
                    color: Colors.blue.shade800,
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: margin.marginUnit,
              ),
              Divider(
                color: Colors.blue.shade800,
              ),
              SizedBox(
                height: 7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    // List<Widget>.generate(25, (index) => StudentCard(margin: margin,),),
                    students
                        .map(
                          (e) => StudentCard(
                            margin: margin,
                            name: e.name,
                          ),
                        )
                        .toList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class StudentCard extends StatelessWidget {
  const StudentCard({
    Key? key,
    this.name = "Anonymouse",
    required this.margin,
  }) : super(key: key);

  final Margin margin;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin.bottomtMargin * 2,
      child: Row(
        children: [
          CircleAvatar(),
          SizedBox(
            width: margin.marginUnit,
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
