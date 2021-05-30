import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.myColour, this.cardChild, this.onPress});

  final Color myColour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Container(
          child: cardChild,
        ),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: myColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
