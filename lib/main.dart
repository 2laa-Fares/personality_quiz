import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

// State<MyApp> Tells flutter that this state belongs to the my app class.
class _MyAppState extends State<MyApp> {
  // List of map<k,v>.
  final _questions = const [
    {
      'questionText': 'Whats\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Maximilian Schwarzmuller', 'score': 1},
        {'text': 'Dr. Angela Yu', 'score': 2},
        {'text': 'Rahul Shetty', 'score': 3},
      ]
    },
  ];

  // Set index here not in build to not change every time app build.
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    // Used to tell fultter to change UI when that action done.
    setState(() {
      // When first question answered go to next one.
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuize),
      ),
    );
  }
}
