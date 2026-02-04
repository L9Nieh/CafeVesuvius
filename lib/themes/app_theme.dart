import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // Light Mode ColorScheme
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.lightPrimary500,
    onPrimary: AppColors.lightText900,
    primaryContainer: AppColors.lightPrimary100,
    onPrimaryContainer: AppColors.lightPrimary900,
    secondary: AppColors.lightSecondary500,
    onSecondary: AppColors.lightText900,
    secondaryContainer: AppColors.lightSecondary100,
    onSecondaryContainer: AppColors.lightSecondary900,
    tertiary: AppColors.lightAccent500,
    onTertiary: AppColors.lightText900,
    tertiaryContainer: AppColors.lightAccent100,
    onTertiaryContainer: AppColors.lightAccent900,
    error: AppColors.errorLight,
    onError: AppColors.onErrorLight,
    errorContainer: AppColors.errorLight,
    onErrorContainer: AppColors.onErrorLight,
    surface: AppColors.lightBg50,
    onSurface: AppColors.lightText900,
    surfaceContainerHighest: AppColors.lightBg200,
    onSurfaceVariant: AppColors.lightText600,
    outline: AppColors.lightBg400,
    outlineVariant: AppColors.lightBg300,
    scrim: AppColors.lightText950,
    inverseSurface: AppColors.lightText900,
    onInverseSurface: AppColors.lightText50,
    inversePrimary: AppColors.lightPrimary200,
    surfaceTint: AppColors.lightPrimary500,
  );

  // Dark Mode ColorScheme
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.darkPrimary500,
    onPrimary: AppColors.darkText50,
    primaryContainer: AppColors.darkPrimary700,
    onPrimaryContainer: AppColors.darkPrimary100,
    secondary: AppColors.darkSecondary500,
    onSecondary: AppColors.darkText50,
    secondaryContainer: AppColors.darkSecondary700,
    onSecondaryContainer: AppColors.darkSecondary100,
    tertiary: AppColors.darkAccent500,
    onTertiary: AppColors.darkText50,
    tertiaryContainer: AppColors.darkAccent700,
    onTertiaryContainer: AppColors.darkAccent100,
    error: AppColors.errorDark,
    onError: AppColors.onErrorDark,
    errorContainer: AppColors.errorDark,
    onErrorContainer: AppColors.onErrorDark,
    surface: AppColors.darkBg50,
    onSurface: AppColors.darkText950,
    surfaceContainerHighest: AppColors.darkBg300,
    onSurfaceVariant: AppColors.darkText700,
    outline: AppColors.darkBg500,
    outlineVariant: AppColors.darkBg400,
    scrim: AppColors.darkText950,
    inverseSurface: AppColors.darkText950,
    onInverseSurface: AppColors.darkBg50,
    inversePrimary: AppColors.darkPrimary300,
    surfaceTint: AppColors.darkPrimary500,
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary500,
      foregroundColor: AppColors.lightText900,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.lightPrimary500,
        foregroundColor: AppColors.lightText900,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.lightText900),
      displayMedium: TextStyle(color: AppColors.lightText900),
      displaySmall: TextStyle(color: AppColors.lightText900),
      headlineLarge: TextStyle(color: AppColors.lightText900),
      headlineMedium: TextStyle(color: AppColors.lightText900),
      headlineSmall: TextStyle(color: AppColors.lightText900),
      titleLarge: TextStyle(color: AppColors.lightText900),
      titleMedium: TextStyle(color: AppColors.lightText900),
      titleSmall: TextStyle(color: AppColors.lightText900),
      bodyLarge: TextStyle(color: AppColors.lightText800),
      bodyMedium: TextStyle(color: AppColors.lightText800),
      bodySmall: TextStyle(color: AppColors.lightText700),
      labelLarge: TextStyle(color: AppColors.lightText900),
      labelMedium: TextStyle(color: AppColors.lightText900),
      labelSmall: TextStyle(color: AppColors.lightText900),
    ),
    scaffoldBackgroundColor: AppColors.lightBg50,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightBg100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.lightBg300),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.lightBg300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.lightPrimary500),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.errorLight),
      ),
      labelStyle: const TextStyle(color: AppColors.lightText700),
      hintStyle: const TextStyle(color: AppColors.lightText500),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkPrimary500,
      foregroundColor: AppColors.darkText50,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkPrimary500,
        foregroundColor: AppColors.darkText50,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.darkText950),
      displayMedium: TextStyle(color: AppColors.darkText950),
      displaySmall: TextStyle(color: AppColors.darkText950),
      headlineLarge: TextStyle(color: AppColors.darkText950),
      headlineMedium: TextStyle(color: AppColors.darkText950),
      headlineSmall: TextStyle(color: AppColors.darkText950),
      titleLarge: TextStyle(color: AppColors.darkText950),
      titleMedium: TextStyle(color: AppColors.darkText950),
      titleSmall: TextStyle(color: AppColors.darkText950),
      bodyLarge: TextStyle(color: AppColors.darkText900),
      bodyMedium: TextStyle(color: AppColors.darkText900),
      bodySmall: TextStyle(color: AppColors.darkText800),
      labelLarge: TextStyle(color: AppColors.darkText950),
      labelMedium: TextStyle(color: AppColors.darkText950),
      labelSmall: TextStyle(color: AppColors.darkText950),
    ),
    scaffoldBackgroundColor: AppColors.darkBg50,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBg200,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.darkBg400),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.darkBg400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.darkPrimary500),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.errorDark),
      ),
      labelStyle: const TextStyle(color: AppColors.darkText700),
      hintStyle: const TextStyle(color: AppColors.darkText500),
    ),
  );
}
