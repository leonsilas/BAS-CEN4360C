import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

class EasyA extends StatefulWidget {
  _EasyAState createState() => _EasyAState();
}

class _EasyAState extends State<EasyA> {
  final _questions = const [
    {
      "questionText": "Did you enjoy this class?",
      "answers": [
        {"text": "Yes", "score": 1},
        {"text": "Yes", "score": 3},
        {"text": "Yes", "score": 5},
      ],
    },
    {
      "questionText": "Is the professor awesome?",
      "answers": [
        {"text": "Totally", "score": 1},
        {"text": "A hundred percent", "score": 3},
        {"text": "No doubt", "score": 5},
      ],
    },
    {
      "questionText": "Would you recommend it to another student?",
      "answers": [
        {"text": "Yes", "score": 1},
        {"text": "Did I say Yes", "score": 3},
        {"text": "I'll say it again, Yes", "score": 5},
      ],
    },
    {
      "questionText": "What grade should your professor give you?",
      "answers": [
        {"text": "A+", "score": 1},
        {"text": "100", "score": 3},
        {"text": "Passing with flying colors", "score": 5},
      ],
    },
    {
      "questionText": "Now give your professor a grade!",
      "answers": [
        {"text": "5/5 on Yelp", "score": 1},
        {"text": "5 Star review on RateMyProfessor", "score": 3},
        {"text": "#1 Teacher Award", "score": 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return _questionIndex < _questions.length
        ? Quiz(_questions, _questionIndex, _answerQuestion)
        : Result(_totalScore, _resetQuiz);
  }
}
