import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionIndex = 0;

  void answerQuestion()  {
    questionIndex++;
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\s your favorite color?',
      'What\s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(child: Text('Answer 1'), onPressed: () => answerQuestion, ),
            RaisedButton(child: Text('Answer 2'), onPressed: () => print('Answered'), ),
            RaisedButton(child: Text('Answer 3'), onPressed: () {
              print('answered');
            }, ),
          ],
        ),
      ),
    );
  }
}