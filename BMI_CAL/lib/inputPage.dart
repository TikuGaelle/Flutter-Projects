import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterapp/results.dart';
import 'package:flutterapp/calculate.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';



const activeCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xff111328);
final Color KBottomContainerColor = Color(0xffEB1555);
final int KBottomContainerHeight = 50;
enum gender {  male,  female}


class InputPage extends StatefulWidget {
 // InputPage(this.title);
  //final String title;
  

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 


  final BannerAd myBanner = BannerAd(
  adUnitId: '<ad unit id>',
  size: AdSize.banner,
  request: AdRequest(),
  listener: BannerAdListener(),
);
 //myBanner.load();

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  gender selectedCardColor;
  int height = 180;
  int weight = 74;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),     
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
       child: Row(
         children: <Widget>[
            Expanded(
       child:ReusableCard(card_color: selectedCardColor == gender.male ? maleCardColor = inactiveCardColor : maleCardColor = activeCardColor,
       card_child: IconContent( text: "Male", icon: FontAwesomeIcons.mars), onPress: (){
         setState(() {
           selectedCardColor = gender.male;
         });
       },
       ),
            ),
          Expanded(
            child: ReusableCard(card_color: selectedCardColor == gender.female ? femaleCardColor = inactiveCardColor : femaleCardColor = activeCardColor,
       card_child: IconContent( text: "Female", icon: FontAwesomeIcons.venus), onPress: (){
         setState(() {
           selectedCardColor = gender.female;
         });
       },),
            ),
         ],
       ),
            ),
            Expanded(
       child: Row(
         children: <Widget>[
            Expanded(
            child:ReusableCard(card_color: activeCardColor,
            card_child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text("HEIGHT",
         style: LabelText), 
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           //makes sure that the baseline of all the children match, that is they all rest on the same bottom line
           crossAxisAlignment: CrossAxisAlignment.baseline,
           textBaseline: TextBaseline.alphabetic,
           children: <Widget>[
             Text(height.toString(),
             style: KLabelText2,
               ),
             Text("cm",
             style: LabelText),
           ]
         ),
         SliderTheme(
           data: SliderTheme.of(context).copyWith(
             thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
             overlayShape: RoundSliderOverlayShape(overlayRadius: 38.0),
             thumbColor: Color(0xffEB1555),
             activeTrackColor: Colors.white,
             overlayColor: Color(0x29EB1555),
           ),
           child: Slider(
             value: height.toDouble(),
             min: 120.0,
             max: 220.0,
             inactiveColor: Color(0xff8D9E98),
             onChanged: (double newValue){
               setState(() {
                 height = newValue.round();
               });
             }),
         ),
       ]
            ),
            ),
            
            ),
         ],
       )
            ),
            Expanded(
       child: Row(
         children: <Widget>[
       Expanded(
       child: ReusableCard(card_color: activeCardColor,
       card_child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("WEIGHT",
           style: LabelText,),
           Text(weight.toString(),
           style: KLabelText2),
           Row(
             mainAxisAlignment: MainAxisAlignment.center, 
             children: [
              RoundIconButton(child: FontAwesomeIcons.minus,
              toggle: (){
                setState(() {
                  weight--;
                });
              },),
               SizedBox(
                 width: 10,
               ),
              RoundIconButton(child: FontAwesomeIcons.plus,
              toggle: (){
                setState(() {
                  weight++;
                });
              },),
             ],
           )
         ]
       ),),
       ),
          Expanded(
          child: ReusableCard(card_color: activeCardColor,
card_child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Text("AGE",
           style: LabelText,),
           Text(age.toString(),
           style: KLabelText2),
           Row(
             mainAxisAlignment: MainAxisAlignment.center, 
             children: [
              RoundIconButton(child: FontAwesomeIcons.minus,
              toggle: (){
                setState(() {
                  age--;
                });
              },),
               SizedBox(
                 width: 10,
               ),
              RoundIconButton(child: FontAwesomeIcons.plus,
              toggle: (){
                setState(() {
                  age++;
                });
              },),
             ],
           )
         ]
       ),),
          ),
         ],
       )
            ),
            BottomButton(text: "CALCULATE",
            onTap: (){
              Calculator calc = Calculator(height: height, weight: weight);

         Navigator.push(context, MaterialPageRoute(builder: (context)  => ResultsPage(
           bmi_result: calc.bmi_calculate(),
           result_text: calc.getResult(),
           result_intepretation: calc.getInterpretation(),
         )));
              },
            )
          ],
        ),
  );
  }
}

class BottomButton extends StatelessWidget {

  final String text;
  final Function onTap;

  BottomButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onTap,
       child: Container(
         child: Center(
           child: Text(text,
           style: LabelText,),
         ), 
         decoration: BoxDecoration(color: KBottomContainerColor,
          borderRadius: BorderRadius.circular(10.0)),
         margin: EdgeInsets.all(10.0),
         width: double.infinity,
         height: KBottomContainerHeight.toDouble(),
       ),
        );
  }
}


class ReusableCard extends StatelessWidget {
  final Color card_color;
  final Widget card_child;
  final Function onPress;

  ReusableCard({@required this.card_color, this.onPress, this.card_child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(color: card_color,
            borderRadius: BorderRadius.circular(10.0)),
            child: card_child,
      ),
    );
  }
}


const LabelText = TextStyle(
        color: Colors.white,
        fontSize: 18,
      );
const KLabelText2 = TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w900,
);

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;
  IconContent({@required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[     
      Icon(
        icon, //FontAwesomeIcons.mars,
        size: 60.0,

      ),
      SizedBox(height: 10),
      Text(text,
      style: LabelText),
    ],);
  }
}

class RoundIconButton extends StatelessWidget {
final IconData child;
final Function toggle;

RoundIconButton({this.child, this.toggle});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:toggle,
      child: Icon(child), 
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 10.0,

    
    );
  }
}
