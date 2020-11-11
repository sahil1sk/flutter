import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final means this value cannot be change once the value is set to it
  final String questionText;

  Question(this.questionText); 

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}