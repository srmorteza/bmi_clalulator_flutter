import 'package:flutter/cupertino.dart';

const lableTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0XFF8D8E98),
);

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
          style: lableTextStyle,
        )
      ],
    );
  }
}