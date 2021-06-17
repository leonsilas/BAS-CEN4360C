import 'package:flutter/material.dart';
import 'package:flutter_crash_course/constants.dart';
import 'package:flutter_crash_course/finalGrade.dart';
import 'package:flutter_crash_course/testpage.dart';
import './dummy.dart';
import './theme.dart';
import './hamburger.dart';

class DefaultPage extends StatefulWidget {
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  var _screenIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _screenIndex = index;
    });
  }

  final _tabWidgets = [
    Dummy("Home"),
    Dummy("Tasks"),
    Dummy("Calendar"),
    TestScreen(),
    EasyA(),
  ];

  final _headerText = [
    "Home",
    "Tasks",
    "Calendar",
    "Exams",
    "Schedule",
    "Profile",
    "Settings"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkThemeData(context),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text(_headerText[_screenIndex])),
        body: _tabWidgets[_screenIndex],
        drawer: Container(
          width: 200,
          child: HamburgerMenu(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.content_paste),
              label: "Tasks",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_outlined),
              label: "Exams",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.class__outlined),
              label: "Schedule",
            ),
          ],
          currentIndex: _screenIndex,
          selectedItemColor: aSecondaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
