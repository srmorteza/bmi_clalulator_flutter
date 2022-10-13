import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottemBotton extends StatelessWidget {
  BottemBotton({required this.onTap , required this.buttonTitle  }) ;
  final VoidCallback? onTap ;
  final String buttonTitle ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        child: Center(child: Text(buttonTitle, style: kLargeButtonTextStyle,)),
        color: kButtomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kButtomContainerHeight,
      ),
    );
  }
}