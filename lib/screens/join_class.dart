import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_classroom/libraries/themedata.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinClassScreen extends StatefulWidget {
  JoinClassScreen({Key? key}) : super(key: key);

  @override
  _JoinClassScreenState createState() => _JoinClassScreenState();
}

class _JoinClassScreenState extends State<JoinClassScreen> {
  late TapGestureRecognizer _recognizer;

  @override
  void initState() {
    super.initState();
    _recognizer = TapGestureRecognizer()..onTap = _launchUrl;
  }

  @override
  void dispose() {
    _recognizer.dispose();
    super.dispose();
  }

  _launchUrl() {
    launch("https://facebook.com/512Rahi");
  }

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
        title: Text("Join Class"),
        actions: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Join"),
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
      body: SingleChildScrollView(
        child: Container(
          margin: StyleSheet().margin().allMargin,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "You're currently signed in as",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: StyleSheet().margin().marginUnit,
              ),
              Material(
                child: ListTile(
                  leading: CircleAvatar(),
                  contentPadding: EdgeInsets.zero,
                  title: Text("Rafat Rashid Rahi"),
                  subtitle: Text("rahi.alive@gmail.com"),
                ),
                elevation: 1,
              ),
              Container(
                margin: StyleSheet().margin().verticalMargin,
                child: Text(
                  "Ask your teacher for the class code, then enter it here.",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Class code",
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                margin: StyleSheet().margin().verticalMargin,
                child: Text(
                  "To sign in with a class code",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: StyleSheet().margin().verticalMargin,
                child: Text(
                  " . Use an authorized account",
                ),
              ),
              Container(
                margin: StyleSheet().margin().verticalMargin,
                child: Text(
                  ". Use a class code, with 6-7 letters and numbers, and no spaces or symbols",
                ),
              ),
              Container(
                margin: StyleSheet().margin().verticalMargin,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "If you are having trouble joining the class, go the the ",
                        style: TextStyle(color: Colors.black87),
                      ),
                      TextSpan(
                        text: "Help Center article",
                        style: TextStyle(color: Colors.blue),
                        recognizer: _recognizer,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
