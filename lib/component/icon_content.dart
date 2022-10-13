import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';



class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.lable});

  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: kLableTextStyle,
        )
      ],
    );
  }
}
