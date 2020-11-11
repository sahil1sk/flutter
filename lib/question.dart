import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final means this value cannot be change once the value is set to it
  final String questionText;

  Question(this.questionText); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // double.infinity means take all width available
      margin: EdgeInsets.all(10), //EdgeInsets.all means setting margin in all direaction 10
      child: Text(
        questionText, 
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}