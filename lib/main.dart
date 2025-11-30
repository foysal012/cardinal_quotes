import 'package:cardinal_quotes/view/screen/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'view/screen/auth/login_screen.dart';
import 'view/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'view/screen/journal_screen.dart';
import 'view/screen/memorial_card_screen.dart';
import 'view/screen/sacred_journals.dart';
import 'view/screen/splash_screen.dart';
import 'view/screen/walpaper_screen.dart';

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
      home: JournalScreen()
      // home: BottomNavBarScreen()
    );
  }
}