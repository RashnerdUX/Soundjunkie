import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models.dart';

class NavigationModel extends ChangeNotifier {
  int _selectedPage = 0;

  int get selectedPage => _selectedPage;

  void changeScreen(int selected) {
    _selectedPage = selected;
    notifyListeners();
  }
}
