import 'package:cardinal_quotes/core/app_color.dart';
import 'package:cardinal_quotes/core/app_image.dart';
import 'package:cardinal_quotes/core/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    check();
  }

  Future<void> check() async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: AppStyle.paddingSymmetric(horizontal: 10.0, vertical: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(image: AssetImage(AppImage.appLogo)),
            Text('Cardinal Quotes',
              style: AppStyle.boldTextStyle(
                fontSize: 20
              ),
            ),
            AppStyle.gap(100.0),

            CupertinoActivityIndicator(
              radius: 15.0,
              color: AppColor.primaryColor,
            ),
            AppStyle.gap(15.0),

            Text('Design & Developed by',
              style: AppStyle.boldTextStyle(
                fontSize: 12
              ),
            ),
            Text('Md. Foysal Joarder',
              style: AppStyle.boldTextStyle(
                fontSize: 14
              ),
            )
          ],
        ),
      ),
    );
  }
}
