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
        "answers": ["Red","Blue","Yellow","Black"]
      },
      {
        "questionText": "What is your favorite animal?",
        "answers": ["pyhotn","dog","cat"]
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola Mundo"),
        ),
        body: Column(children: [
          Questions(_questions[indexQuestion]["questionText"]),
          ...(_questions[indexQuestion]["answers"] as List<String>).map((answer){
            return Answer(_answerQuetion,answer);
          }).toList()
        ]),
      ),
    );
  }
}
