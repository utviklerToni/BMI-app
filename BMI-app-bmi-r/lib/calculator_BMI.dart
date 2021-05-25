import 'dart:math';

class CalculatorBMI {
  CalculatorBMI({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Hmm, maybe you\'re just "Big-Boned"';
    } else if (_bmi >= 18.5) {
      return 'Ok, we get it you\'re Brad Pitt';
    } else {
      return 'Huh, looks like you never had KFC';
    }
  }
}
