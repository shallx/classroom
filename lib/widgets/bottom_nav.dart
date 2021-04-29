import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_classroom/screens/stream_screen.dart';
import 'package:google_classroom/screens/people_screen.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (selectedIndex) {
        print(index);
        if (selectedIndex != index) {
          switch (selectedIndex) {
            case 0:
              {
                Get.off(() => StreamScreen());
              }
              break;
            case 1:
              {
                // TODO: implement Classwork screen
                print("Build classwork page first");
              }
              break;
            case 2:
              {
                Get.off(() => PeopleScreen());
              }
              break;
          }
        } else {
          // TODO: implement refresh screen
          print("Implement Refresh Screen");
        }
      },
      currentIndex: index,
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
    );
  }
}
