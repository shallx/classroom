import 'package:flutter/material.dart';
import 'package:google_classroom/libraries/themedata.dart';

class CreateClassScreen extends StatelessWidget {
  const CreateClassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.grey.shade700,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Create class"),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Create"),
              ),
            ),
          ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey.shade700,
            ),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Send Google feedback"),
                  value: "feedback",
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        margin: StyleSheet().margin().allMargin,
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  labelText: "Class name (required)",
                ),
              ),
              SizedBox(
                height: StyleSheet().margin().marginUnit,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  labelText: "Section",
                ),
              ),
              SizedBox(
                height: StyleSheet().margin().marginUnit,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  labelText: "Room",
                ),
              ),
              SizedBox(
                height: StyleSheet().margin().marginUnit,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  labelText: "Subject",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
