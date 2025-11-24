import 'package:cardinal_quotes/view/screen/bottom_nav_bar/home_screen.dart';
import 'package:cardinal_quotes/view/screen/bottom_nav_bar/more_screen.dart';
import 'package:cardinal_quotes/view/screen/bottom_nav_bar/sounds_screen.dart';
import 'package:cardinal_quotes/view/screen/bottom_nav_bar/top_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {

  List<Widget> pages = [
    HomeScreen(),
    SoundsScreen(),
    SoundsScreen(),
    TopScreen(),
    MoreScreen()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          currentIndex: currentIndex,
          backgroundColor: Color(0xffFEF0D6),
          // backgroundColor: Color(0xff201f1f),
          selectedItemColor: Color(0xff52180D),
          selectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xff52180D)
          ),
          unselectedItemColor: Color(0xff52180D).withAlpha(600),
          unselectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff52180D).withAlpha(600),
          ),
          showUnselectedLabels: true,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Color(0xffFEF0D6)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
                label: 'Sounds',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.scatter_plot_outlined),
                label: 'Soul'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.align_vertical_top),
                label: 'Top'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_vert),
                label: 'More'
            )
          ]
      )

    );
  }
}
