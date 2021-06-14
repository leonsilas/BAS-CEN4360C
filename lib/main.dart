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
    ]; //end of dummyText

    var rateAppText = [
      {
        "questionText": "How are you liking the app so far?",
        "answerText": [
          {"choice": "It\'s great!", "score": 3},
          {"choice": "Acceptable.", "score": 2},
          {"choice": "Could use some work.", "score": 1},
          {"choice": "What even is this?", "score": 0}
        ]
      },
      {
        "questionText": "Did you see all the dialogue available?",
        "answerText": [
          {"choice": "Yes!", "score": 3},
          {"choice": "There's more dialogue?", "score": 2},
          {"choice": "No.", "score": 1},
          {"choice": "Please seek help.", "score": 0}
        ]
      },
      {
        "questionText": "I really appreciate the feedback! Thank you!",
        "answerText": [
          {"choice": "You're very welcome!", "score": 3},
          {"choice": "Anything to help the development.", "score": 2},
          {"choice": "...", "score": 1},
          {"choice": "Just stop.", "score": 0}
        ]
      }
    ]; //end of rateAppText

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
                ScrollButton(_incrementText, _longPressMeme),
                ElevatedButton(
                    onPressed: () => print("And this one too?"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                    child: Text("Test Button")),
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
