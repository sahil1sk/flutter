import 'package:flutter/material.dart';

// import files after package
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_MyAppState _ makes this class private means this will available only in this file not out of this file
class _MyAppState extends State<MyApp> {

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  var _questionIndex = 0; // make this property private

  // make this method private
  void _answerQuestion() {
    setState(() {
      _questionIndex++;      
    });

    if(_questionIndex < _questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: _questionIndex < _questions.length 
        ? Quiz(
            questions: _questions, 
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
          )
        : Result(),
      ),
    );
  }
}

 