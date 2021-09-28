import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import './answer.dart';
//import 'package:newworld/Question.dart';
//import 'package:newworld/answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questoinIndex = 0;
  var _totalScore =0;
  
  var _questions = [
    //1
    {
      'questionText': 'What is your Age Group?',
      'answers': [
        {'text': 'Below 5', 'score': 15},
        {'text': 'Between 5to 30', 'score': 10},
        {'text': 'Between 30 to 60', 'score': 5},
        {'text': 'above 60', 'score': 20},
      ]
    },
    //2
    {
      'questionText':'Have any of these symptoms developed?\n A high temperature (fever)\n A new continuous cough?',
      'answers': [
        {'text':'Yes','score':20},
        {'text':'No','score': 0},
        {'text':'unsure','score': 10} ]
    },
    //3
    {
      'questionText': 'Do you have any of these health conditions?',
      'answers': [
        {'text':'Asthama','score':10},
        {'text':'Diabetes','score':15},
        {'text':'Pregancy','score':5},
        {'text':'None of the above','score':0}]
    },
    //4
    {
      'questionText':
          'Have you or someone in your \n family visited any of the below countries in the \nlast 14 days?',
      'answers': [
        {'text':'China','score':25},
        {'text':'Italy','score':20},
        {'text':'Iran','score':15},
        {'text':'london','score':10},
        {'text':'none of the above','score': 0},
        ]
    },
    //5
    {
      'questionText':
          '"Have you or someone in your family travelled within India in \n public transport in the last 14 days?',
      'answers': [
        {'text':'Yes','score': 20},
        {'text':'No','score': 0},
        {'text':'unsure','score': 10} ]
    },
    //6
    {
      'questionText':
          'Have you or someone \n in your family come in close contact with a \n confirmed COVID-19 patient in the last 14 days?',
      'answers': [
        {'text':'Yes','score':20},
        {'text':'No','score': 0},
        {'text':'unsure','score': 10} ]
    },
    //7
    {
      'questionText': '"Do you Have Cough Fever Headeache ??',
      'answers': [
        {'text':'Yes','score': 20},
        {'text':'No','score': 0}
         ]
    },
    //8
    {
      'questionText': 'Do you have sore throat?',
     'answers': [
        {'text':'Yes','score': 20},
        {'text':'No','score': 0}
         ]    },
    //9
    {
      'questionText': 'Do you have coarseness in voice ?',
      'answers': [
        {'text':'Yes','score': 20},
        {'text':'No','score': 0}
         ]
    },
    //10
    {
      'questionText': 'Do you feel shortness of breath ?',
     'answers': [
        {'text':'Yes','score': 20},
        {'text':'No','score': 0}
         ]
    },
  ];


  void _resetQuiz()
  {
    setState((){
      _questoinIndex=0;
    _totalScore=0;
 
    });
     }


  void _answerquestion(int score) {
    //var abool = true;
    _totalScore = _totalScore +score;
    setState(() {
      _questoinIndex = _questoinIndex + 1;
      if (_questoinIndex < _questions.length) {
        print('we have some questions');
      } else {
        print('no more questions');
      }
    });

    //QuestoinIndex = QuestoinIndex + 1;
    //print('abc');
  }
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Corona Symptoms Checker'),
        ),
        body: _questoinIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerquestion,
                //questionIndex: _questoinIndex,
                questionIndex:    _questoinIndex,
                questions: _questions,
              )
            //: Center(child: Text('you did it'),)
            //debugprin('allok')
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
