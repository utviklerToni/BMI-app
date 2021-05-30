// import 'package:bmi_app/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  static const routeName = '/maths-calculator';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text('Maths calculator'),
      ),
      body: Text('maths calculator coming soon'),
    );
  }
}
