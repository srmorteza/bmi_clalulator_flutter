import 'package:flutter/material.dart';
import '../constants.dart';
import '../reuseable_card.dart';
import '../component/bottombutton.dart';



class ResultPage extends StatelessWidget {
ResultPage({required this.bmiResult, required this.interpretation, required this.resultText}) ;
  final String bmiResult ;
  final String resultText ;
  final String interpretation;


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child:  Text('Your Result' , style: kTitleTextStyle,),
          )) , 
          Expanded(
              flex: 5 ,
              child: ReusableCard(colour: kActiveCardColor,
              cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase() , style: kResultTextStyle,),
                  Text(bmiResult , style: kBmiTextStyle,),
                  Text(interpretation ,textAlign: TextAlign.center, style: kBodyTextStyle,),
                ],
              ) ,


              )),
          BottemBotton(onTap: (){ Navigator.pop(context); }, buttonTitle: 'RE-Calculate')
        ],
      )
    );
  }
}
