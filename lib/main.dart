import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyappState();
  }
}

class MyappState extends State<MyApp> {
  var indexQuestion = 0;
    void answerQuetion() {
      setState(() {
        indexQuestion = indexQuestion + 1;
      });

      print(indexQuestion);
    }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite Color?",
      "What is your favorite animal?",
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hola Mundo"),
        ),
        body: Column(children: [
          Text(questions[indexQuestion]),
          RaisedButton(child: Text("Answer 1"), onPressed: answerQuetion),
          RaisedButton(child: Text("Answer 2"), onPressed: answerQuetion),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: (answerQuetion),
          ),
        ]),
      ),
    );
  }
}
