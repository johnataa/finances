import 'package:flutter/material.dart';

class AppTheme {
  // Dark theme colors
  static const Color darkBackground = Color(0xFF151515);
  static const Color darkSurface = Color(0xFF1f1f1f);
  static const Color darkSurfaceLight = Color(0xFF2A2A2A);
  static const Color darkOnSurface = Color(0xFFFFFFFF);
  static const Color darkOnSurfaceMuted = Color(0xFF9E9E9E);
  static const Color darkOnSurfaceDim = Color(0xFF666666);

  // Light theme colors
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceLight = Color(0xFFEEEEEE);
  static const Color lightOnSurface = Color(0xFF1A1A1A);
  static const Color lightOnSurfaceMuted = Color(0xFF666666);
  static const Color lightOnSurfaceDim = Color(0xFF9E9E9E);

  // Common colors
  static const Color primary = Color(0xFF7B2CBF);
  static const Color secondary = Color(0xFF00C853);
  static const Color positive = Color(0xFF00C853);
  static const Color negative = Color(0xFFFF5252);

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBackground,
    colorScheme: const ColorScheme.dark(
      surface: darkSurface,
      primary: primary,
      secondary: secondary,
      onSurface: darkOnSurface,
      error: negative,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: darkBackground,
      elevation: 0,
      centerTitle: false,
    ),
    cardTheme: CardThemeData(
      color: darkSurface,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: darkOnSurface,
      foregroundColor: darkBackground,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: darkOnSurface),
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: darkOnSurface),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: darkOnSurface),
      bodyMedium: TextStyle(fontSize: 14, color: darkOnSurface),
      bodySmall: TextStyle(fontSize: 12, color: darkOnSurfaceMuted),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
        color: darkOnSurfaceMuted,
      ),
    ),
  );

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightBackground,
    colorScheme: const ColorScheme.light(
      surface: lightSurface,
      primary: primary,
      secondary: secondary,
      onSurface: lightOnSurface,
      error: negative,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: lightBackground,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: lightOnSurface),
    ),
    cardTheme: CardThemeData(
      color: lightSurface,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: lightOnSurface),
      headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: lightOnSurface),
      titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: lightOnSurface),
      bodyMedium: TextStyle(fontSize: 14, color: lightOnSurface),
      bodySmall: TextStyle(fontSize: 12, color: lightOnSurfaceMuted),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
        color: lightOnSurfaceMuted,
      ),
    ),
  );
}
