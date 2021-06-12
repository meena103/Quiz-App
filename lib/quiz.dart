import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int quesIndex;
  final Function answerQuestions;

  Quiz(
      {required this.questions,
      required this.answerQuestions,
      required this.quesIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[quesIndex]["questionText"] as String,
        ),
        ...(questions[quesIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestions(answer["score"]), answer["text"] as String);
        }).toList()
      ],
    );
  }
}

//! Error [line 25] :The argument type 'Object?' can't be assigned to the parameter type 'String'.
//* Solution: write "as String" after the statement