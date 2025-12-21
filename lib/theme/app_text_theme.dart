import 'package:flutter/material.dart';

class AppTextTheme {
  // Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    // Display Styles
    displayLarge: TextStyle(fontSize: 57.0, fontWeight: FontWeight.w400, letterSpacing: -0.25, color: Colors.black),
    displayMedium: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.black),
    displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.black),

    // Headline Styles
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.black),
    headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.black),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.black),

    // Title Styles
    titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500, letterSpacing: 0.0, color: Colors.black),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, color: Colors.black),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, color: Colors.black.withOpacity(0.8)),

    // Body Styles
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: Colors.black),
    bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, color: Colors.black.withOpacity(0.6)),

    // Label Styles
    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, color: Colors.black),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: Colors.black.withOpacity(0.8)),
    labelSmall: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: Colors.black.withOpacity(0.6)),
  );

  // Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    // Display Styles
    displayLarge: TextStyle(fontSize: 57.0, fontWeight: FontWeight.w400, letterSpacing: -0.25, color: Colors.white),
    displayMedium: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.white),
    displaySmall: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.white),

    // Headline Styles
    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.white),
    headlineMedium: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.white),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0, color: Colors.white),

    // Title Styles
    titleLarge: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500, letterSpacing: 0.0, color: Colors.white),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, letterSpacing: 0.15, color: Colors.white),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, color: Colors.white.withOpacity(0.8)),

    // Body Styles
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25, color: Colors.white),
    bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400, letterSpacing: 0.4, color: Colors.white.withOpacity(0.6)),

    // Label Styles
    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1, color: Colors.white),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: Colors.white.withOpacity(0.8)),
    labelSmall: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, letterSpacing: 0.5, color: Colors.white.withOpacity(0.6)),
  );
}
