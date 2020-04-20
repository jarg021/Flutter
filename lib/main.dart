import 'package:flutter/material.dart';
import './questions.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  var indexQuestion = 0;
    void _answerQuetion() {
      setState(() {
        indexQuestion = indexQuestion + 1;
      });

      print(indexQuestion);
    }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What is your favorite Color?",
      "What is your favorite animal?",
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola Mundo"),
        ),
        body: Column(children: [
          Questions(_questions[indexQuestion]),
          RaisedButton(child: Text("Answer 1"), onPressed: _answerQuetion),
          RaisedButton(child: Text("Answer 2"), onPressed: _answerQuetion),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: (_answerQuetion),
          ),
        ]),
      ),
    );
  }
}
