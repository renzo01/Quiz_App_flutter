//for using material desing
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

/* void main() {
  runApp(MyApp());
}  */
//ES6 is avaliable for dart
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'Wha\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Snake', 'score': 0},
        {'text': 'Cat', 'score': 10}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructure?',
      'answer': [
        {'text': 'Atuncar', 'score': 6},
        {'text': 'Black', 'score': 10},
        {'text': 'Sandobal', 'score': 9},
        {'text': 'Damaso', 'score': 4}
      ]
    }
  ];
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    } else {
      print('No more question ');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App on flutter'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
