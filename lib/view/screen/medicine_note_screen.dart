import 'package:flutter/material.dart';
import '../../core/app_style.dart';

class MedicineNoteScreen extends StatefulWidget {
  const MedicineNoteScreen({super.key});

  @override
  State<MedicineNoteScreen> createState() => _MedicineNoteScreenState();
}

class _MedicineNoteScreenState extends State<MedicineNoteScreen> {
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
                    children: [
                      IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.arrow_forward, color: Color(0xffFEF0D6), size: 30.0,)
                      ),
                      AppStyle.gap(5.0),
                      Text('Medicine Notes',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFEF0D6)
                        ),
                      ),
                    ],
                  ),
              AppStyle.gap(10.0),

              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Opacity(
                        opacity: 0.7,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            color: Color(0xffFEF0D6)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.check_circle, color: Color(0xff591A0E)),
                                  AppStyle.gap(10.0),

                                  Text('Napa',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff52180D)
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text('everyday at 4.00 pm',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff52180D)
                                  ),
                                ),
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
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
               return Container(
                 height: 350,
                 padding: EdgeInsets.all(10.0),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topLeft: Radius.circular(15.0),
                     topRight: Radius.circular(15.0)
                   ),
                   color: Color(0xffFEF0D6)
                 ),
                 child: Column(
                   children: [
                     AppStyle.gap(20.0),

                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         GestureDetector(
                           onTap: () => Navigator.pop(context),
                           child: Text('Cancel',
                             style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.w500,
                                 color: Color(0xff591A0E)
                             ),
                           ),
                         ),
                         Text('New To-dos',
                           style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff591A0E)
                           ),
                         ),
                         Text('Next',
                           style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.w500,
                               color: Color(0xff591A0E)
                           ),
                         ),
                       ],
                     ),
                     AppStyle.gap(20.0),
                     
                     Container(
                       padding: EdgeInsets.all(15.0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadiusGeometry.all(Radius.circular(25.0)),
                         color: Color(0xff591A0E),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Row(
                             children: [
                               Icon(Icons.calendar_month, color: Color(0xffFEF0D6)),
                               AppStyle.gap(10.0),

                               Text('New to-dos',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFEF0D6)
                                ),
                               )
                             ],
                           ),

                           Icon(Icons.access_time_filled, color: Color(0xffFEF0D6)),
                         ],
                       ),
                     ),
                     AppStyle.gap(20.0),
                     
                     Container(
                       padding: EdgeInsets.all(10.0),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(25.0),
                         border: Border.all(width: 1.0, color: Color(0xff591A0E))
                       ),
                       child: Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('Repeat',
                                 style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500,
                                     color: Color(0xff591A0E)
                                 ),
                               ),

                               Row(
                                 children: [
                                   Text('Everyday',
                                     style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                         color: Color(0xff591A0E)
                                     ),
                                   ),
                                   AppStyle.gap(10.0),

                                   Icon(Icons.arrow_forward_ios_sharp, color: Color(0xff591A0E))
                                 ],
                               ),
                             ],
                           ),
                           AppStyle.gap(5.0),
                           Divider(
                             height: 2.5,
                             thickness: 2.5,
                             color: Color(0xff591A0E),
                           ),
                           AppStyle.gap(5.0),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text('End Repeat',
                                 style: TextStyle(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w500,
                                     color: Color(0xff591A0E)
                                 ),
                               ),

                               Row(
                                 children: [
                                   Text('After 1 Month',
                                     style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                         color: Color(0xff591A0E)
                                     ),
                                   ),
                                   AppStyle.gap(10.0),

                                   Icon(Icons.arrow_forward_ios_sharp, color: Color(0xff591A0E))
                                 ],
                               ),
                             ],
                           )
                         ],
                       ),
                     )
                   ],
                 ),
               );
              }
          );
        },
        backgroundColor: Color(0xffFEF0D6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30.0)
        ),
        child: Icon(Icons.add_box_outlined, color: Color(0xff52180D)),
      ),
    );
  }
}
