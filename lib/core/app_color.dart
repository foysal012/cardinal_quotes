import 'package:flutter/material.dart';

class AppColor{
  static const Color primaryColor = Color(0xFFC13B20);
  static const Color primaryButtonColor = Color(0xFF52180D);
  static const Color secondaryButtonColor = Color(0xFFC13B20);
  static Color? fadedPrimaryColor = Colors.indigo[50];


  static const Color appRed = Color(0xFFEE0D0D);
  static const Color appFadedRed = Color(0xFFECB5B5);
  static const Color appWhite = Color(0xFFFFFFFF);
  static const Color appFadedWhite = Color(0xFFD6D6D6);
  static const Color appBlack = Color(0xFF000000);
  static const Color appFadedBlack = Colors.black12;
  static const Color appDarkBlack = Color(0xFF252525);

  static const Color appIndigo = Color(0xFF5493E6);
  static const Color appGreen = Color(0xFF359A4B);
  static const Color appFadedGreen = Color(0xFF7BC58A);

  static const Color appBackgroundColor = Color(0xFFFAFAFA);
  static const Color appAuthBackgroundColor = Color(0xFFFEF0D6);

  static const Color appBorderColor = Color(0xFFFEF0D6);
}

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF6C63FF);
  static const Color primaryLight = Color(0xFFA5A1FF);
  static const Color primaryDark = Color(0xFF4A43CC);

  // Secondary Colors
  static const Color secondary = Color(0xFF36D1DC);
  static const Color secondaryLight = Color(0xFF7BE4EC);
  static const Color secondaryDark = Color(0xFF2AA8B0);

  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color darkGrey = Color(0xFF616161);

  // Semantic Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFF44336);
  static const Color warning = Color(0xFFFF9800);
  static const Color info = Color(0xFF2196F3);

  // Background Colors
  static const Color backgroundLight = Color(0xFFFAFAFA);
  static const Color backgroundDark = Color(0xFF121212);

  // Surface Colors
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color surfaceDark = Color(0xFF1E1E1E);

  // Text Colors
  static const Color textLight = Color(0xFF000000);
  static const Color textDark = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFF757575);

  // Shadow Colors
  static const Color shadowLight = Color(0x1A000000);
  static const Color shadowDark = Color(0x1AFFFFFF);
}

// Easy-to-use color getter based on theme
class ThemeColors {
  static Color primary(BuildContext context) => Theme.of(context).colorScheme.primary;
  static Color background(BuildContext context) => Theme.of(context).colorScheme.background;
  static Color text(BuildContext context) => Theme.of(context).colorScheme.onBackground;
  static Color surface(BuildContext context) => Theme.of(context).colorScheme.surface;
}