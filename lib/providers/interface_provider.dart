import 'package:flutter/material.dart';

class InterfaceProvider extends ChangeNotifier {
  int _currentBottomNavIndex = 1;
  int get currentBottomNavIndex => _currentBottomNavIndex;

  Future<void> setCurrentIndexOfBottomNav(int value) async {
    _currentBottomNavIndex = value;
    notifyListeners();
  }
}
