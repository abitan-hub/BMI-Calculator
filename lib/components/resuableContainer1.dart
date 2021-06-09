import 'package:flutter/material.dart';
import 'package:Calculator/constants.dart';

class ReusableContainer1 extends StatelessWidget {
  ReusableContainer1({this.colour, this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: kMarginBetnContainer,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: kBoxBorderRadius,
        ),
      ),
    );
  }
}
