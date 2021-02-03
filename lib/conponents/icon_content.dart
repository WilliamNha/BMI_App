import 'package:flutter/material.dart';
import 'package:bmicalculator/constant.dart';

class IconContent extends StatelessWidget {
  final String textInput;
  final IconData iconInput;
  IconContent({this.iconInput, this.textInput});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
//          FontAwesomeIcons.mars,
          iconInput,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          textInput,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
