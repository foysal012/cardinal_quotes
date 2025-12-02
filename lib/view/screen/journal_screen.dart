import 'package:flutter/material.dart';
import '../../core/app_style.dart';

class JournalScreen extends StatefulWidget {
  const JournalScreen({super.key});

  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {

  final titleTextController = TextEditingController();
  final noteTextController = TextEditingController();

  @override
  void dispose() {
    titleTextController.dispose();
    noteTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF0D6),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyle.gap(70.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: (){

                      },
                      icon: Icon(Icons.arrow_forward, color: Color(0xff52180D), size: 30.0,)
                  ),

                  Container(
                    padding: EdgeInsets.all(2.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xff52180D)
                    ),
                    child: Icon(Icons.menu, color: Color(0xffFEF0D6))
                  )
                ],
              ),
              AppStyle.gap(10.0),

              TextFormField(
                controller: titleTextController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Title',
                    hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff52180D)
                    ),
                    labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff52180D)
                    ),
                ),
              ),
              AppStyle.gap(10.0),

              TextFormField(
                controller: noteTextController,
                maxLines: 10,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Note',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff52180D)
                    ),
                    labelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff52180D)
                    ),
                ),
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Color(0xff52180D),
                borderRadius: BorderRadiusGeometry.all(Radius.circular(30.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    Icon(Icons.camera, color: Color(0xffFEF0D6),),
                    Icon(Icons.edit, color: Color(0xffFEF0D6),),
                    Icon(Icons.link, color: Color(0xffFEF0D6),),
                    Icon(Icons.menu, color: Color(0xffFEF0D6),),
                ],
              ),
            )),
      ),
    );
  }
}
