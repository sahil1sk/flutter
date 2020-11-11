import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // here we set the varable that it is a funtion
  final Function selectHandler;

  // constructor
  Answer(this.selectHandler); // we set the funtion

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue, // also use as Color(..)
        child: Text('Answer 1'), 
        onPressed: selectHandler, 
      ),
    );
  }
}
