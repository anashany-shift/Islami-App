import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String currentLanguage = "en";
  ThemeMode currentThemeMode = ThemeMode.light;

  changeCurrentLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) {
      return;
    }
    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeCurrentTheme(ThemeMode newTheme) {
    if (currentThemeMode == newTheme) {
      return;
    }
    currentThemeMode = newTheme;
    notifyListeners();
  }

  String getBackgroundImage() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/home_dark_background.png"
        : "assets/images/bgapp.png";
  }

  String getSplashBackgroundImage() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/splashdark.png"
        : "assets/images/splash.png";
  }

  String getHeadofsebha() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/head of seb7a dark.png"
        : "assets/images/head of seb7a.png";
  }

  String getbodyofsebha() {
    return currentThemeMode == ThemeMode.dark
        ? "assets/images/body of seb7a dark2.png"
        : "assets/images/body of seb7a.png";
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
