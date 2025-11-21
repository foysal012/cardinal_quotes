import 'package:flutter/material.dart';

import '../../../core/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            AppStyle.gap(70.0),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                      flex:2,
                      child: Icon(Icons.menu, color: Color(0xff52180D))
                  ),
                  AppStyle.gap(10.0),
                  Expanded(
                      flex: 7,
                      child:
                      ListView.builder(
                        shrinkWrap: true,
                        reverse: false,
                        scrollDirection: Axis.horizontal,
                        physics: AlwaysScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Color(0xffFEF0D6),
                              borderRadius: BorderRadius.all(Radius.circular(10.0))
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star),
                                AppStyle.gap(2.5),
                                Text('Popular')
                              ],
                            ),
                          );
                        },
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
