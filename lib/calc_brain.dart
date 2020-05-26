import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalcBrain {

  CalcBrain({ this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over weight';
    }
    else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation()
  {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Excercise more';
    }
    else if (_bmi > 18.5) {
      return 'You have a than normal body weight. Good job';
    } else {
      return 'You have a lower than normal body weight. Eat more';
    }
  }
}