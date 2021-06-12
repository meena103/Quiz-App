import 'package:flutter/material.dart';
import 'package:vaibhav_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = const [
    //or final questions = const []

    //const variable_Name = [] => No changes can be made in this variable further in the Code
    //variable_Name = const [] => No changes can be made in this list further (no add/remove of element)

    //using Map syntax {......}
    {
      "questionText": "What\'s your Dream Company?",
      "answers": [
        {"text": "Amazon", "score": 10},
        {"text": "Microsoft", "score": 8},
        {"text": "Morgan S", "score": 7},
        {"text": "Google", "score": 9}
      ]
    },
    {
      "questionText": "What\'s your Hobby?",
      "answers": [
        {"text": "Fitness", "score": 10},
        {"text": "Gaming", "score": 8},
        {"text": "Driving", "score": 7},
        {"text": "Coding", "score": 9}
      ]
    },
    {
      "questionText": "What\'s your favorite Car?",
      "answers": [
        {"text": "BMW", "score": 10},
        {"text": "Mercedes", "score": 8},
        {"text": "G wagon", "score": 7},
        {"text": "Volvo", "score": 9}
      ]
    },
  ];

  // var dummy = ["hello"];  // var dummy = const["hello"] do'nt allow futher to edit this list
  // dummy.add("Vaibhav");
  // print(dummy);   //prints [hello, Vaibhav]

  // putting _ in strating of any class name and variable name makes it private (it can only be used in that file)
  var _quesIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _quesIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      // Anonymous function Syntax:    () {........Body........}
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);

    if (_quesIndex < _questions.length) {
      print("More questions ahead !!");
    } else {
      print("No more question!!");
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vaibhav Quiz App"),
        ),
        body: _quesIndex <
                _questions
                    .length // ternary expression =>  condition ? (..body..) : (...else part body...)
            ? Quiz(
                answerQuestions: _answerQuestions,
                quesIndex: _quesIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
