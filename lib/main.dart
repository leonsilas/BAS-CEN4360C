import 'package:flutter/material.dart';
import './dummy.dart';

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
    var dummyText = [
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
    ];

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
                ElevatedButton(
                    onPressed: () => print("The button works. Hopefully."),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                    child: Text("Test Button")),
                ElevatedButton(
                    onPressed: _incrementText,
                    onLongPress: _longPressMeme,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.cyan[700])),
                    child: Text("Tap Me!")),
                ElevatedButton(
                    onPressed: () => print("The button works. Hopefully."),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                    child: Text("Test Button")),
              ],
            ),
            Dummy(dummyText[_index])
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
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              label: "Calendar",
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
