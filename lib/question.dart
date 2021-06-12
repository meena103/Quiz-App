import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; // questionText is string variable holds question
  // final shows that it not to be changed
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(questionText,
          style: TextStyle(fontSize: 25), textAlign: TextAlign.center),
    );
  }
}
