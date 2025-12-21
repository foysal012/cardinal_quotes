import 'package:flutter/material.dart';

class ScreenSizes {
  // Common breakpoints
  static const double mobile = 480;
  static const double tablet = 768;
  static const double desktop = 1024;

  // Check device type
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < tablet;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= tablet &&
          MediaQuery.of(context).size.width < desktop;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktop;

  // Responsive width
  static double responsiveWidth(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width >= desktop) {
      return 1024; // Max width for desktop
    } else if (width >= tablet) {
      return width * 0.9; // 90% of screen for tablet
    } else {
      return width * 0.95; // 95% of screen for mobile
    }
  }

  // Responsive padding
  static EdgeInsets responsivePadding(BuildContext context) {
    if (isDesktop(context)) {
      return const EdgeInsets.symmetric(horizontal: 48);
    } else if (isTablet(context)) {
      return const EdgeInsets.symmetric(horizontal: 32);
    } else {
      return const EdgeInsets.symmetric(horizontal: 16);
    }
  }

  // Responsive font size
  static double responsiveFontSize(BuildContext context, {double mobile = 14, double tablet = 16, double desktop = 18}) {
    if (isDesktop(context)) return desktop;
    if (isTablet(context)) return tablet;
    return mobile;
  }
}

// Responsive widget builder
class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext) mobile;
  final Widget Function(BuildContext)? tablet;
  final Widget Function(BuildContext)? desktop;

  const ResponsiveBuilder({
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= ScreenSizes.desktop && desktop != null) {
          return desktop!(context);
        } else if (constraints.maxWidth >= ScreenSizes.tablet && tablet != null) {
          return tablet!(context);
        } else {
          return mobile(context);
        }
      },
    );
  }
}