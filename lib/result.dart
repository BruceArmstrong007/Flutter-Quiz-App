
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);
  String get resultPharse{
    var resultText = "You did it!";
    if (resultScore<=8){
      resultText="you are Awesome";
    }else if(resultScore<=12){
      resultText="you are Likeable!";
    }else if(resultScore<=16){
      resultText="you are Crazy!";
    }else{
      resultText="you are ..Strange!";   
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(
          child : Column(
            children: <Widget>[
              Text(
                resultPharse,
              style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              ),
              FlatButton(child: Text('Restart Quiz'),onPressed: resetHandler,textColor : Colors.blue,),
              Text('-By Bruce',style:TextStyle(fontSize:9,fontWeight:FontWeight.bold),),
            ],
          ),
        ),
      
    );
  }
}