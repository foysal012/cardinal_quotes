import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Image(image: ''),
            Text('Cardinal Quotes'),
            SizedBox(height: 15),
            CupertinoActivityIndicator(),
            SizedBox(height: 15),

            Text('Design & Developed by'),
            Text('Md. Foysal Joarder')
          ],
        ),
      ),
    );
  }
}
