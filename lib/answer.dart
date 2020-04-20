import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  var _text;
  final Function selectHandler;
  Answer(this.selectHandler,text){
    _text=text;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(_text),
        color: Colors.lightBlue,
        onPressed: selectHandler,
      ),
    );
  }
}
