import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetHandler;

  Result(this._resultScore, this._resetHandler);

  String get resultPhrase {
    String resultText;

    if (_resultScore <= 11)
      resultText = "This class was amazing!";
    else if (_resultScore <= 19)
      resultText = "Thank you so much for the experience.";
    else if (_resultScore <= 24)
      resultText = "This has been my favorite class to take so far.";
    else
      resultText = "I will never forget it.";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(child: Text('Restart'), onPressed: _resetHandler,)
        ],
      ),
    );
  }
}
