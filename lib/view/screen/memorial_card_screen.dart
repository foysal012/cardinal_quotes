import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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

  XFile? file;

  Future<void> uploadImage() async{
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        file = pickedFile;
      });
    }
  }

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
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Color(0xffFEF0D6)
                ),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        uploadImage();
                      },
                      child: Container(
                        height: 142,
                        width: 252,
                        decoration: BoxDecoration(
                          color: Color(0xff52180d0d),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: file.toString().isNotEmpty? Image.file(File(file?.path??'')): Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_circle_outline_outlined, color: Color(0xff52180D)),
                            AppStyle.gap(10.0),

                            Text('Add a photo',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff52180D)
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AppStyle.gap(15.0),

                    SizedBox(
                      width: 252,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameTextController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                  color: Color(0xff52180d0d),
                                  width: 2
                                )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: Color(0xff52180d0d),
                                      width: 2
                                  )
                              ),
                              hintText: 'Name',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff52180d0d)
                              )
                            ),
                          ),
                          AppStyle.gap(10.0),

                          TextFormField(
                            controller: dateOfBirthTextController,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xff52180d0d),
                                        width: 2
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xff52180d0d),
                                        width: 2
                                    )
                                ),
                                hintText: 'Date of Birth',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff52180d0d)
                              )
                            ),
                          ),
                          AppStyle.gap(10.0),

                          TextFormField(
                            controller: dateOfDeathTextController,
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xff52180d0d),
                                        width: 2
                                    )
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xff52180d0d),
                                        width: 2
                                    )
                                ),
                                hintText: 'Date of Death',
                              hintStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff52180d0d)
                              )
                            ),
                          ),
                          AppStyle.gap(40.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MaterialButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                                    side: BorderSide(
                                        width: 1,
                                        color: Color(0xff52180D)
                                    )
                                ),
                                child: Text('Cancel',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                        color: Color(0xff52180D)
                                    ),
                                ),
                              ),

                              MaterialButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0))
                                ),
                                color: Color(0xff52180D),
                                child: Text('Continue',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )

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
