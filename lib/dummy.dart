import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  final String dummyText;

  Dummy(this.dummyText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        dummyText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
