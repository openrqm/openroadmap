import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  static double tileHeight = 150;
  static double tileWidth = 300;
  static double headerHeight = 90;

  bool darkMode = false;

  void toggleDarkMode() {
    print('toggle');
    darkMode = !darkMode;
    notifyListeners();
  }

  ThemeData getTheme() {
    if (darkMode) {
      return getDarkModeTheme();
    } else {
      return getLightModeTheme();
    }
  }

  ThemeData getLightModeTheme() {
    return ThemeData(
      backgroundColor: Colors.white,
    );
  }

  ThemeData getDarkModeTheme() {
    return ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.black26,
          onPrimary: Colors.white,
          secondary: Colors.amber,
          onSecondary: Colors.green,
          error: Colors.red,
          onError: Colors.blue,
          background: Colors.black26,
          onBackground: Colors.purple,
          surface: Colors.black45,
          onSurface: Colors.white),
      backgroundColor: Colors.black26,
    );
  }
}
