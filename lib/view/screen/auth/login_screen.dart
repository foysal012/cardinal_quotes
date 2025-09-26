import 'package:cardinal_quotes/core/app_color.dart';
import 'package:cardinal_quotes/core/app_image.dart';
import 'package:cardinal_quotes/core/app_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appAuthBackgroundColor,

      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
                child: Image(image: AssetImage(AppImage.authImageUp)),
              )
          ),

          Expanded(
              flex: 4,
              child: Padding(
                padding: AppStyle.paddingSymmetric(horizontal: 25.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: AppStyle.paddingSymmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MaterialButton(
                              onPressed: () {
                  
                              },
                              child: Container(
                                  padding: AppStyle.paddingSymmetric(
                                    horizontal: 20.0,
                                    vertical: 8.0
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: AppStyle.radius(10.0),
                                    border: Border.all(
                                        color: AppColor.primaryButtonColor,
                                        width: 1
                                    )
                                  ),
                                  child: Text('Sign Up',
                                    style: AppStyle.boldTextStyle(
                                      fontSize: 16,
                                      color: AppColor.primaryButtonColor
                                    ),
                                  )
                              ),
                            ),
                  
                            MaterialButton(
                              onPressed: () {
                  
                              },
                              child: Container(
                                  padding: AppStyle.paddingSymmetric(
                                      horizontal: 20.0,
                                      vertical: 8.0
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: AppStyle.radius(10.0),
                                      color: AppColor.primaryButtonColor
                                  ),
                                  child: Text('Log in',
                                    style: AppStyle.boldTextStyle(
                                        fontSize: 16,
                                        color: AppColor.appWhite
                                    ),
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      AppStyle.gap(40.0),
                  
                      TextFormField(
                        controller: emailTextController,
                        decoration: InputDecoration(
                          contentPadding: AppStyle.paddingSymmetric(horizontal: 10.0),
                          hintText: 'Enter your email address',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: AppStyle.radius(5.0),
                            borderSide: BorderSide(
                              width: 1,
                              color: AppColor.primaryButtonColor
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: AppStyle.radius(5.0),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: AppColor.primaryButtonColor
                              )
                          ),
                        ),
                      ),
                      AppStyle.gap(23.0),
                  
                      TextFormField(
                        controller: passwordTextController,
                        obscureText: isObscure,
                        obscuringCharacter: '#',
                        decoration: InputDecoration(
                          contentPadding: AppStyle.paddingSymmetric(horizontal: 10.0),
                          hintText: 'Enter password',
                          suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  isObscure = ! isObscure;
                                });
                              },
                              icon: Icon(isObscure == true? Icons.visibility_off : Icons.visibility)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: AppStyle.radius(5.0),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: AppColor.primaryButtonColor
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: AppStyle.radius(5.0),
                              borderSide: BorderSide(
                                  width: 1,
                                  color: AppColor.primaryButtonColor
                              )
                          ),
                        ),
                      ),
                      AppStyle.gap(40.0),
                  
                      MaterialButton(
                        onPressed: () {
                  
                        },
                        child: Container(
                            padding: AppStyle.paddingSymmetric(
                                horizontal: 20.0,
                                vertical: 8.0
                            ),
                            decoration: BoxDecoration(
                                borderRadius: AppStyle.radius(10.0),
                                color: AppColor.primaryButtonColor
                            ),
                            child: Text('Next',
                              style: AppStyle.boldTextStyle(
                                  fontSize: 16,
                                  color: AppColor.appWhite
                              ),
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ),
          AppStyle.gap(10.0),

          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerRight,
                child: Image(image: AssetImage(AppImage.authImageDown)),
              )
          ),
        ],
      ),
    );
  }
}
