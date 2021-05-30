import 'package:bmi_app/constant/my_custom_constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton(
      {@required this.onTap,
      @required this.buttonTitle,
      @required this.buttonColor});

  final Function onTap;
  final String buttonTitle;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          textScaleFactor: 1.5,
        ),
        color: buttonColor,
        margin: EdgeInsets.only(top: 9.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
