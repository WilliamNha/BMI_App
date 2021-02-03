import 'package:flutter/material.dart';
import '../constant.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.iconAction});
  final IconData icon;
  final Function iconAction;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: iconAction,
      elevation: 0.0,
      disabledElevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
