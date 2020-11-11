import 'package:flutter/material.dart';

// import files after packages
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_MyAppState _ makes this class private means this will available only in this file not out of this file
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; // make this property private

  // make this method private
  void _answerQuestion() {
    setState(() {
      _questionIndex++;      
    });
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
            Question(questions.elementAt(_questionIndex)),
            RaisedButton(child: Text('Answer 1'), onPressed: () => _answerQuestion(), ),
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

 