// File: core/theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GTHRTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFFF7A00),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    textTheme: GoogleFonts.montserratTextTheme(),
    colorScheme: ColorScheme.light(
      primary: const Color(0xFFFF7A00),
      secondary: const Color(0xFF1976D2),
      background: Colors.white,
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white, elevation: 0),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFFFF7A00),
    scaffoldBackgroundColor: const Color(0xFF0D0D0D),
    textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFFFF7A00),
      secondary: const Color(0xFF1976D2),
      background: const Color(0xFF121212),
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF121212), elevation: 0),
  );
}