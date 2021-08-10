import 'dart:math';

class Calculator{
  final int height;
  final int weight;

  double _bmi;
  Calculator({this.height, this.weight});

  String bmi_calculate(){
   // _bmi = weight / (height*height);
   _bmi = weight / pow(height/100, 2);
  
  //returning the value to one decimal place

  return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return "Overweight";
    }
    else if (_bmi > 18.5){
      return "Normal";
    }
    else  {
      return "Underweight";
    }
  }

  String getInterpretation(){
   if (_bmi >= 25){
      return "You have a higher than normal body weight. Try to exercise more";
    }
    else if (_bmi > 18.5){
      return "Good job! You have a normal body weight";
    }
    else  {
      return "You have a lower than nornmal body weight. You should eat a bit more";
    } 
  }

}