import 'package:flutter/material.dart';

import '../constant/my_custom_constants.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: 9.0,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
