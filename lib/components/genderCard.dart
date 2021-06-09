import 'package:flutter/material.dart';
import 'package:Calculator/constants.dart';

class GenderCard extends StatelessWidget {
  GenderCard({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: kGenderCardIconSizeTop,
        ),
        SizedBox(
          height: kSizeBoxHeight,
        ),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}
