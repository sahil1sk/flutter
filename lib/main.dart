import 'package:flutter/material.dart';

// we can also run the funtion using => 
// if we have to execute only one line of code
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // setting that this is the override method
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Column(
          children: <Widget>[
            Text('What\'s your favorite color?'),
            RaisedButton(child: Text('Answer 1'), onPressed: null, ),
            RaisedButton(child: Text('Answer 2'), onPressed: null, ),
            RaisedButton(child: Text('Answer 3'), onPressed: null, ),
          ],
        ),
      ),
    );
  }
}