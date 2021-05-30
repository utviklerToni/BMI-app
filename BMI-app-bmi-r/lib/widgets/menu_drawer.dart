import 'package:flutter/material.dart';

import '../constant/my_custom_constants.dart';

class MenuDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 27,
      ),
      title: Text(
        title,
        style: TextStyle(
            // fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: kActiveCardColor,
            child: Text(
              'Mini Calculator',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: kBottomContainerColor,
              ),
            ),
          ),
          SizedBox(
            height: 21,
          ),
          buildListTile('BMI calculator', Icons.healing, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
        ],
      ),
    );
  }
}
