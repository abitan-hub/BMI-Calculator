import 'package:flutter/material.dart';
import 'package:Calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onpress, @required this.text});

  final Function onpress;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kLargeButtonTextStyle,
          ),
        ),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        color: kBottomContainerColor,
      ),
    );
  }
}
