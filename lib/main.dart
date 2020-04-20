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
      {
        "questionText": "What is your favorite Color?",
        "Answer1": "Red",
        "Answer2": "Blue",
        "Answer3": "Yellow",
      },
      {
        "questionText": "What is your favorite animal?",
        "Answer1": "pyhotn",
        "Answer2": "dog",
        "Answer3": "cat",
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola Mundo"),
        ),
        body: Column(children: [
          Questions(_questions[indexQuestion]["questionText"]),
          Answer(_answerQuetion, _questions[indexQuestion]["Answer1"]),
          Answer(_answerQuetion,  _questions[indexQuestion]["Answer2"]),
          Answer(_answerQuetion,  _questions[indexQuestion]["Answer3"]),
        ]),
      ),
    );
  }
}
