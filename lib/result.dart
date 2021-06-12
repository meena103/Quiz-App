import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  //! Error: The argument type 'Function' can't be assigned to the parameter type 'void Function()?'.
  //* Solution: use VoidCallBack instead of Function

  Result(this.resultScore, this.resetHandler);

  String get resultPharse {
    var resultText = "You did it !!";
    if (resultScore <= 30) {
      resultText = "You are Awesome";
    } else if (resultScore <= 25) {
      resultText = "Pretty likeable";
    } else if (resultScore <= 27) {
      resultText = "You are Strange";
    } else {
      resultText = "You are bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPharse,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text("Restart Quiz !"),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
