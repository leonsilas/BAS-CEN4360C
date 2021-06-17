import 'package:flutter/material.dart';
import './constants.dart';

class Answer extends StatelessWidget {
  final Function _answerHandler;
  final String _answerText;

  Answer(this._answerHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(aSecondaryColor)),
          child: Text(_answerText),
          onPressed: _answerHandler,
        ));
  }
}
