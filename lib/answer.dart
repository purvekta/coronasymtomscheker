//import 'package:newworld/Question.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
final Function selectHandler;
final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      
      color: Colors.red,
      //textColor: colors.blue,
      //textColor : Colors.white,
      //textColor :Colors.white,
      child: RaisedButton(child: Text(answerText), onPressed: selectHandler),
    );
  }
}
