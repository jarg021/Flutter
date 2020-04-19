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
        body: Column(children: [
          Text("The question"),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuetion),
          RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("press answerQuestion2")
          ),
          RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("press answerQuestion3");
              }),
        ]),
      ),
    );
  }

  void answerQuetion() {
    print("Press answerQuestion");
  }
}
