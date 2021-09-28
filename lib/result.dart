import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;

    if (resultScore <= 20) {
      resultText =
          'Low Risk without Symptoms,\n You are Safe still stay Home \n Be safe ';
      print(resultScore);
    } else if (resultScore <= 50) {
      resultText =
          'Medium risk without symptoms \n You are safe High risk still \n stay Home Medium risk without symptoms';
      print(resultScore);
    } else if (resultScore <= 60 && resultScore >= 50) {
      resultText = 'high risk without symptoms Dont Go Outside';
      print(resultScore);
    } else {
      resultText =
          'High risk with symptoms and may be affected \n Inform Goverment about this ';
      print(resultScore);
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: FlatButton(
                onPressed: resetHandler,
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Restart the Quiz ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: FlatButton(
                onPressed: resetHandler,
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Restart the Quiz ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
    );
  }
}
