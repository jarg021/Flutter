import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var _text;
  Answer(text){
    _text=text;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_text),
        color: Colors.lightBlue,
        onPressed: null,
      ),
    );
  }
}
