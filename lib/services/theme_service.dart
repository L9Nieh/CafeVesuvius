import 'package:flutter/material.dart';

class ThemeService {
  static final ThemeService _instance = ThemeService._internal();

  factory ThemeService() {
    return _instance;
  }

  ThemeService._internal();

  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);

  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.light;
    }
  }

  void setLightMode() {
    themeMode.value = ThemeMode.light;
  }

  void setDarkMode() {
    themeMode.value = ThemeMode.dark;
  }

  bool isDarkMode() {
    return themeMode.value == ThemeMode.dark;
  }
}
