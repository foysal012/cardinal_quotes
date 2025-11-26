import 'dart:math';
import 'package:flutter/material.dart';
import '../../core/app_style.dart';

class SacredJournals extends StatefulWidget {
  const SacredJournals({super.key});

  @override
  State<SacredJournals> createState() => _SacredJournalsState();
}

class _SacredJournalsState extends State<SacredJournals> {

  static Color generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppStyle.gap(70.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){
                      
                          },
                          icon: Icon(Icons.arrow_forward, color: Color(0xffFEF0D6), size: 30.0,)
                      ),
                      AppStyle.gap(5.0),
                      Text('Scared Journals',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFEF0D6)
                        ),
                      ),
                    ],
                  ),
                  
                  Container(
                    padding: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xffFEF0D6)
                    ),
                    child: Icon(Icons.search, color: Color(0xff52180D),),
                  )
                ],
              ),
              AppStyle.gap(10.0),

              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Opacity(
                      opacity: 0.7,
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: generateRandomColor(),
                        ),
                        child: Column(
                          children: [
                            Text('My Story',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff52180D)
                              ),
                            ),
                            AppStyle.gap(5.0),
                            Text('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff52180D),
                              ),
                            ),
                            AppStyle.gap(10.0),
                            Container(
                              height: 5,
                              width: 30.0,
                              color: Color(0xff52180D),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ),
              AppStyle.gap(45.0),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffFEF0D6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(30.0)
        ),
        child: Icon(Icons.add_box_outlined, color: Color(0xff52180D)),
      ),
    );
  }
}
