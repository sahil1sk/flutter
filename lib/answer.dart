import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // here we set the varable that it is a funtion
  final Function selectHandler;
  final String answerText;

  // constructor
  Answer(this.selectHandler, this.answerText); // we set the funtion and answerText

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue, // also use as Color(..)
        child: Text(answerText), 
        onPressed: selectHandler, 
      ),
    );
  }
}
