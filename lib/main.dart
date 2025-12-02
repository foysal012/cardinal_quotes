import 'package:flutter/material.dart';
import 'view/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'view/screen/bottom_nav_bar/sounds_screen.dart';
import 'view/screen/journal_screen.dart';
import 'view/screen/sound_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      // home: SplashScreen()
      // home: SignupScreen()
      // home: LoginScreen()
      // home: SoundsScreen()
      home: BottomNavBarScreen()
    );
  }
}