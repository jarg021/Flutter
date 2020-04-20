import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
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
          Answer(_answerQuetion,"Answer 1"),
          Answer(_answerQuetion,"Answer 2"),
          Answer(_answerQuetion,"Answer 3"),
        ]),
      ),
    );
  }
}
