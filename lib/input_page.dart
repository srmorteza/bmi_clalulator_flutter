import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';



enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  int height =180 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars,lable: 'MALE',),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      lable: 'FEMAIL',
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Heght', style: kLableTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                      Text(height.toString() , style: kNumberTextStyle,),
                      Text('  cm',style: kLableTextStyle,)
                    ],),
                    Slider(
                        value: height.toDouble(),
                      min:120.0,
                      max:220.0,
                      activeColor: Color(0XFFEB1555),
                      inactiveColor: Color(0XFF8d8e98),
                      onChanged: (double newValue){
                          setState(() {
                            height=newValue.round();
                          });

                           },


                    )
                    
                  ],
                  ),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                  ),
                )
              ],
            )),
            Container(
              color: kButtomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kButtomContainerHeight,
            ),
          ],
        ));
  }
}
