import 'package:flutter/material.dart';
import 'package:flutterapp/inputPage.dart';

 const KTextStyle = TextStyle(fontWeight: FontWeight.bold,
 fontSize: 50.0,
 );

class ResultsPage extends StatelessWidget {
final String bmi_result;
final String result_text;
final String result_intepretation;

ResultsPage({@required this.bmi_result, @required this.result_intepretation, @required this.result_text}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
            child: Text("Your Result",
            style: KTextStyle,),
           ),),
           Expanded(
             flex: 5,
           child: ReusableCard(
            card_color: activeCardColor,
           card_child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Text(result_text,
               style: TextStyle(color: Color(0xff24D876),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                ),),
                Text(bmi_result,
                style: KTextStyle),
                Text(result_intepretation,
                style: LabelText,
                textAlign: TextAlign.center,),
                BottomButton(text: "RE-CALCULATE",
                onTap: (){
                  Navigator.pop(context);
                  }),
               ]
           ),))
        ]
      )
      
    );
  }
}