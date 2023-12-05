import 'dart:math';
import 'package:flutter/material.dart';

class RandomizerChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;

  int min = 0, max = 0;

  // Widget listing
  int currentPage = 0;
  bool isSwitched = false;
  bool? isChecked = false;

  void GenerateRandomNumber() {
    _generatedNumber = min + _randomGenerator.nextInt(max + 1 - min);
    notifyListeners();
  }

  void setMin(int value) {
    min = value;
    notifyListeners();
  }

  void setMax(int value) {
    max = value;
    notifyListeners();
  }

  void Switch(bool value) {
    isSwitched = value;
    notifyListeners();
  }

  void Check(bool? value) {
    isChecked = value;
    notifyListeners();
  }

  void Navigate(int value) {
    currentPage = value;
    notifyListeners();
  }
}
