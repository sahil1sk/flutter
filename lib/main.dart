import 'package:flutter/material.dart';

void main(){
  // runAppp is available because of package we import
  runApp(MyApp()); // here we passing the core widget which we want to run
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello!'));
  }
}