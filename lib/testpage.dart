import 'package:flutter/material.dart';
import './scrollButton.dart';
import './dummy.dart';

class TestScreen extends StatefulWidget {
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var _index = 0;

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
    final _dummyText = const [
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScrollButton(_incrementText, _longPressMeme),
          ],
        ),
        Dummy(_dummyText[_index]),
      ],
    );
  }
}
