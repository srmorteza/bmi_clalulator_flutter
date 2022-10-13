import 'package:flutter/material.dart';
import '../constants.dart';
import '../reuseable_card.dart';
import '../component/bottombutton.dart';



class ResultPage extends StatelessWidget {

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
                  Text('Normal' , style: kResultTextStyle,),
                  Text('18.3' , style: kBmiTextStyle,),
                  Text('your BMI result is quite low, you should eat more !' ,textAlign: TextAlign.center, style: kBodyTextStyle,),
                ],
              ) ,


              )),
          BottemBotton(onTap: (){ Navigator.pop(context); }, buttonTitle: 'RE-Calculate')
        ],
      )
    );
  }
}
