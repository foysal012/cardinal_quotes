import 'package:flutter/material.dart';

import '../../core/app_style.dart';

class MemorialCardScreen extends StatefulWidget {
  const MemorialCardScreen({super.key});

  @override
  State<MemorialCardScreen> createState() => _MemorialCardScreenState();
}

class _MemorialCardScreenState extends State<MemorialCardScreen> {

  final nameTextController = TextEditingController();
  final dateOfBirthTextController = TextEditingController();
  final dateOfDeathTextController = TextEditingController();

  @override
  void dispose() {
    nameTextController.dispose();
    dateOfBirthTextController.dispose();
    dateOfDeathTextController.dispose();
    super.dispose();
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
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xffFEF0D6)
                ),
                child: Column(
                  children: [
                    Container(
                      height: 142,
                      width: 252,
                      decoration: BoxDecoration(
                        color: Color(0xff52180D0D),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle_outline_outlined),
                          AppStyle.gap(10.0),

                          Text('Add a photo'),
                        ],
                      ),
                    ),
                    AppStyle.gap(10.0),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
