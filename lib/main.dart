import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion()  {
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Column(
          children: <Widget>[
            Text('What\'s your favorite color?'),
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