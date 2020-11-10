import 'package:flutter/material.dart';

// we can also run the funtion using => 
// if we have to execute only one line of code
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // setting that this is the override method
  @override
  Widget build(BuildContext context) {
    //Scaffold give the basic design structure which more look like regular ui
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'),),
        body: Text('This is my default text!'),
      ),
    );
  }
}