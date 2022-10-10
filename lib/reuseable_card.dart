

import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild});

  final Color colour;
  final cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(15.0),
    );
  }
}
