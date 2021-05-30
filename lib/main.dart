import 'package:bmi_app/screens/metrics_screen.dart';
import 'package:flutter/material.dart';

import './screens/calculator_screen.dart';
// import './constant/my_custom_constants.dart';

import 'input_page.dart';

void main() {
  runApp(MiniCalculator());
}

class MiniCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          canvasColor: Color(0xFF02212C),
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF02212C),
        ),
        home: InputPage(),
        routes: {
          CalculatorScreen.routeName: (ctx) => CalculatorScreen(),
          MetricsConverter.routeName: (ctx) => MetricsConverter(),
        });
  }
}
