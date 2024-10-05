import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models.dart';

class ThemeModel with ChangeNotifier {
  bool _isDarkMode = false;
  late ThemeData _activeTheme;
  late SharedPreferences prefs;

  static const String themeState = 'ThemeState';

  bool get darkMode => _isDarkMode;
  ThemeData get activeTheme => _activeTheme;

  ThemeModel({bool darkMode = false}) {
    _activeTheme = darkMode ? lightTheme : darkTheme;
  }

  void updateTheme() async {
    prefs = await SharedPreferences.getInstance();

    if (_activeTheme == darkTheme) {
      _activeTheme = lightTheme;
      _isDarkMode = false;
      await prefs.setBool('isDarkMode', false);
    } else {
      _activeTheme = darkTheme;
      _isDarkMode = true;
      await prefs.setBool('isDarkMode', true);
    }
    notifyListeners();
  }
}
