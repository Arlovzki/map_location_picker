import 'package:flutter/material.dart';

ThemeData fetchGlobalTheme() {
  return ThemeData(
    fontFamily: 'Nunito',
    primaryColor: Color(0xFF3C54B4),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF3C54B4),
        elevation: 0,
        padding: const EdgeInsets.symmetric(vertical: 10),
      ),
    ),
  );
}
