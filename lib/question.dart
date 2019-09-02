import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final is for definite a variable not change after build the aplication.
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
        child: Text(
      questionText,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    ));
  }
}
