import 'package:flutter/material.dart';

class AppTypography {
  // Display Text
  static TextStyle displayLarge(BuildContext context) => Theme.of(context).textTheme.displayLarge!;
  static TextStyle displayMedium(BuildContext context) => Theme.of(context).textTheme.displayMedium!;
  static TextStyle displaySmall(BuildContext context) => Theme.of(context).textTheme.displaySmall!;

  // Headline Text
  static TextStyle headlineLarge(BuildContext context) => Theme.of(context).textTheme.headlineLarge!;
  static TextStyle headlineMedium(BuildContext context) => Theme.of(context).textTheme.headlineMedium!;
  static TextStyle headlineSmall(BuildContext context) => Theme.of(context).textTheme.headlineSmall!;

  // Title Text
  static TextStyle titleLarge(BuildContext context) => Theme.of(context).textTheme.titleLarge!;
  static TextStyle titleMedium(BuildContext context) => Theme.of(context).textTheme.titleMedium!;
  static TextStyle titleSmall(BuildContext context) => Theme.of(context).textTheme.titleSmall!;

  // Body Text
  static TextStyle bodyLarge(BuildContext context) => Theme.of(context).textTheme.bodyLarge!;
  static TextStyle bodyMedium(BuildContext context) => Theme.of(context).textTheme.bodyMedium!;
  static TextStyle bodySmall(BuildContext context) => Theme.of(context).textTheme.bodySmall!;

  // Label Text
  static TextStyle labelLarge(BuildContext context) => Theme.of(context).textTheme.labelLarge!;
  static TextStyle labelMedium(BuildContext context) => Theme.of(context).textTheme.labelMedium!;
  static TextStyle labelSmall(BuildContext context) => Theme.of(context).textTheme.labelSmall!;
}