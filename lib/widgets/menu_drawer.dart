import 'package:bmi_app/screens/calculator_screen.dart';
import 'package:bmi_app/screens/metrics_screen.dart';
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
            color: Color(0xFF573D7A),
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
      elevation: 32,
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
          buildListTile('BMI calculator', Icons.healing, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          // buildListTile('calculator', Icons.calculate, () {
          //   Navigator.of(context).pushReplacementNamed('/maths-calculator');
          // }),
          buildListTile(
            'Maths Calculator',
            Icons.calculate,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CalculatorScreen(),
                ),
              );
            },
          ),
          buildListTile(
            'Metrics Converter',
            Icons.sync,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MetricsConverter(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
