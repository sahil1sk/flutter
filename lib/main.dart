import 'package:flutter/material.dart';

// import files after packages
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

//_MyAppState _ makes this class private means this will available only in this file not out of this file
class _MyAppState extends State<MyApp> {

  final questions = const [
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

    if(_questionIndex < questions.length) {
      print('we have more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: _questionIndex < questions.length ? Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']), // we are not able to use questions[_questionIndex].questionText
            // so here it will ... make the new list 
            ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer)).toList()
          ],
        ) 
        :
        Center(
          child: Text('You did it!'),
        ),
      ),
    );
  }
}

 