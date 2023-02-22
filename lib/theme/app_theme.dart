import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme:
        const AppBarTheme(color: primary, elevation: 0, centerTitle: true),
    primaryColor: primary,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      primaryColor: primary,
      scaffoldBackgroundColor: Colors.black);
}
