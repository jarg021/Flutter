import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var Questions=[ "What is your favorite Color?", "What is your favorite animal?"]
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola Mundo"),
        ),
        body:Column(children: [
        Text("The question"),
        RaisedButton(child:Text("Answer 1"),onPressed: null),
        RaisedButton(child:Text("Answer 2"),onPressed: null),
        RaisedButton(child:Text("Answer 3"),onPressed: null),
        ]),
      ),
    );
  }
}
