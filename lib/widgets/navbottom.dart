import 'package:flutter/material.dart';
import 'package:travel_flutter/navpages/search_page.dart';
import 'package:travel_flutter/profile_screen/profile_page.dart';

import '../navpages/calendar_page.dart';
import '../navpages/message_page.dart';
import '../screens/home_screen.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  List pages = [
    HomePage(),
    CalendarPage(),
    SearchPage(),
    MessagePage(),
    Profile(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        elevation: 2,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: 'Profile'),
        ],
      ),
    );
  }
}
