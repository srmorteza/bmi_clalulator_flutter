import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({  required this.height ,required this.weight}) ;
  final int height ;
  final int weight ;
  double _bmi =0;
  String calculatBMI(){
    _bmi = weight /pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >25){
      return 'overweight';
    }else if(_bmi>18.5){
      return 'Normal' ;
    }else{
      return 'underweight' ;
    }
  }

  String getInterpretation(){
    if(_bmi >25){
      return 'you have a higher than normal body weight. try to exercise more';
    }else if(_bmi>18.5){
      return 'you have normal body weight. good job' ;
    }else{
      return 'you have lower than normal body weight. you can eat a bit more' ;
    }
  }

}