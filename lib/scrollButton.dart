import 'package:flutter/material.dart';

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
                      MaterialStateProperty.all<Color>(Colors.cyan[700])),
              child: Text("Tap Me!")),
    );
  }
}

