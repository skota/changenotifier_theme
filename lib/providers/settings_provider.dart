import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider with ChangeNotifier {
  String currentTheme;

  SettingsProvider() {
    currentTheme = 'blue';
    //loadPreferences();
  }

  static final ThemeData blueTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
  );

  static final ThemeData greenTheme = ThemeData(
    primaryColor: Colors.green,
    brightness: Brightness.light,
  );

  // setter
  void setTheme(String themename) {
    currentTheme = themename;
    notifyListeners();
  }

  // getter
  ThemeData get getTheme {
    if (currentTheme == "blue") {
      return blueTheme;
    } else {
      return greenTheme;
    }
  }
}
