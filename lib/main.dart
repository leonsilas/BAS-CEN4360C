import 'package:flutter/material.dart';
import './dummy.dart';
import 'scrollButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _indexA = 0;
  var _screenIndex = 0;

  void _incrementText() {
    setState(() {
      print("I tapped this~!");
      if (_index > 14)
        _index = 0;
      else
        _index++;
    });
  }

  void _incrementRating() {
    setState(() {
      print("Next question...");
      if (_indexA > 2)
        _indexA = 16;
      else
        _indexA++;
    });
  }

  void _longPressMeme() {
    setState(() {
      _index = 16;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //stuff to use within the materialapp
    const dummyText = const [
      "This is a test to see how my app text works",
      "When you tap the button the text changes!",
      "It'll happen every time you click on it~",
      "Yep, even if you click on it now.",
      "Or now.",
      "...",
      "Are you going to keep tapping?",
      "There's other things you could be doing right now.",
      "Seriously.  You can stop at any moment.",
      "You're just trying to exhaust dialogue now aren't you?",
      "Well it's not going to happen, so try again buddy.",
      "...",
      "...",
      "...",
      "Alright, I'm out of dialogue for you.",
      "So let me just reiterate the point of all of this.",
      "What did you think this was going to do?"
    ]; //end of dummyText

    //the app itself
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: Colors.cyan[700]),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("THIS IS MY APP HEADER"), centerTitle: true),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScrollButton(_incrementText, _longPressMeme)
              ],
            ),
            Dummy(dummyText[_index]), 
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Tasks",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: "Calendar",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Exams",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: "Schedule",
            ),
          ],
          currentIndex: _screenIndex,
          selectedItemColor: Colors.cyan,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
