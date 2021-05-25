import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor, this.cardChild, this.onPress});

  final Color customColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(9.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0), color: customColor),
      ),
    );
  }
}
