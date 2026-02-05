import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'themes/app_theme.dart';
import 'services/theme_service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = ThemeService();

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeService.themeMode,
      builder: (context, themeMode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Café Vesuvius',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          home: const Login(),
        );
      },
    );
  }
}
