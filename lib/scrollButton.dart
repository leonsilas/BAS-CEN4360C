import 'package:flutter/material.dart';
import 'package:flutter_crash_course/constants.dart';

class ScrollButton extends StatelessWidget {
  final Function _pressHandler;
  final Function _holdHandler;

  ScrollButton(this._pressHandler, this._holdHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
              onPressed: _pressHandler,
              onLongPress: _holdHandler,
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(aSecondaryColor)),
              child: Text("Tap Me!")),
    );
  }
}

