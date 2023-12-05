import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_tuto/home_page.dart';
import 'package:flutter_tuto/profile_page.dart';

class AppChangeNotifier extends ChangeNotifier {
  final _randomGenerator = Random();

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;

  int min = 0, max = 0;

  int currentPage = 0;
  bool isSwitched = false;
  bool? isChecked = false;

  final List<Widget> pages = [HomePage(), const ProfilePage()];
  final List<String> titles = ["Home Page", "Profile Page"];

  void generateRandomNumber() {
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

  void doSwitch(bool value) {
    isSwitched = value;
    notifyListeners();
  }

  void doCheck(bool? value) {
    isChecked = value;
    notifyListeners();
  }

  void navigate(int value) {
    currentPage = value;
    notifyListeners();
  }

  void updateCurrentPage(int value) {
    currentPage = value;
    notifyListeners();
  }
}
