import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getAdvice() {
    if (_bmi >= 25) {
      return 'You need to do Exercise';
    } else if (_bmi > 18.5) {
      return 'Just go as it is going';
    } else {
      return 'You need to eat more and get fat';
    }
  }
}
