import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
      final _questions =const [
      {
        'questionText': 'What\'s your favourite Color?',
        'answers': [{'text':'black','score':15}, {'text':'blue','score':10}, {'text':'red','score':5}, {'text':'green','score':3}],
      },
      {
        'questionText': 'What\'s your favourite Animal?',
        'answers': [{'text':'rabbit','score':15}, {'text':'cat','score':10}, {'text':'elephant','score':5}, {'text':'lion','score':3}],
      },
    ];
  int _questionIndex = 0;
  var _totalScore = 0;

void _resetQuiz(){
  setState((){
  _questionIndex=0;
  _totalScore =0;
  });
}

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
        if(_questionIndex < _questions.length){
          print("We have more _questions");
    }else{
      print("We have no more _questions");
    }
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length ? Quiz(answerQuestion:_answerQuestion,questionIndex:_questionIndex,questions: _questions, ): Result(_totalScore,_resetQuiz),
              
      ),
    );
  }
}
