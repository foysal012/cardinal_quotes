import 'package:cardinal_quotes/view/screen/sound_details_screen.dart';
import 'package:flutter/material.dart';
import '../../../core/app_style.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final locationController = TextEditingController();

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
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_forward, color: Color(0xffFEF0D6), size: 30.0,)
                  ),
                  AppStyle.gap(5.0),
                  Text('Edit Profile',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFEF0D6)
                    ),
                  ),

                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Done',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFEF0D6)
                        ),
                      )
                  )
                ],
              ),
              AppStyle.gap(20.0),

              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpS2jXFB6LH0E_CwixZJydltAkEw56cWgUZZXcKuWYsB_62QdktUvv1l4&s'))
                    ),
                  ),

                  Positioned(
                      bottom: 1,
                      right: 0.5,
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          padding: EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.all(Radius
                                  .circular(15.0)),
                              color: Colors.white
                          ),
                          child: Icon(Icons.edit, color: Colors.red)
                        ),
                      ))
                ],
              ),
              AppStyle.gap(10.0),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  AppStyle.gap(5.0),

                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: 'Foysal Joarder',
                      filled: true,
                      fillColor: Colors.white70,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                  AppStyle.gap(10.0),

                  Text('Email',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  AppStyle.gap(5.0),

                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'foysal012@gmail.com',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                  AppStyle.gap(10.0),

                  Text('Phone Number',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  AppStyle.gap(5.0),

                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      hintText: '01912345678',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                  AppStyle.gap(10.0),

                  Text('Location',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  AppStyle.gap(5.0),

                  TextFormField(
                    controller: locationController,
                    decoration: InputDecoration(
                      hintText: 'Dhaka, Bangladesh',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                  AppStyle.gap(10.0),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
