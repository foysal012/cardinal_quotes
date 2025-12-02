import 'package:flutter/material.dart';
import '../../../core/app_style.dart';

class SoundDetailsScreen extends StatefulWidget {
  const SoundDetailsScreen({super.key});

  @override
  State<SoundDetailsScreen> createState() => _SoundDetailsScreenState();
}

class _SoundDetailsScreenState extends State<SoundDetailsScreen> {
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
                  Text('Sleep Sounds',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFEF0D6)
                    ),
                  ),
                ],
              ),
              AppStyle.gap(10.0),

              Container(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(bottom: 10.0),
                      height: 330,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Color(0xffFEF0D6)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 295,
                            width: MediaQuery.sizeOf(context).width,
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                color: Color(0xffFEF0D6),
                                borderRadius: BorderRadiusGeometry.all(Radius.circular(15.0))
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/images/music1.png'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.multitrack_audio, color: Color(0xff591A0E),
                                      size: 30,
                                    ),
                                    Icon(Icons.multitrack_audio, color: Color(0xff591A0E),
                                      size: 50,
                                    ),
                                    Icon(Icons.multitrack_audio, color: Color(0xff591A0E),
                                      size: 30,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    AppStyle.gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Stack(
                              alignment: AlignmentGeometry.bottomCenter,
                              children: [
                                Container(
                                  height: 152,
                                  width: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                                      color: Color(0xffFEF0D6)
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                                      color: Color(0xff591A0E)
                                  ),
                                ),
                              ],
                            ),
                            AppStyle.gap(5.0),
                            Icon(Icons.volume_down, color: Color(0xffFEF0D6), size: 30,)
                          ],
                        ),
                      ],
                    ),

                    Center(child: Icon(Icons.play_circle_outline, size: 80, color: Colors.white)),
                    AppStyle.gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('04.00',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFEF0D6)
                          ),
                        ),
                        Text('12.00',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFEF0D6)
                          ),
                        )
                      ],
                    ),
                    AppStyle.gap(5.0),

                    Stack(
                      children: [
                        Container(
                          height: 10,
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                              color: Color(0xffFEF0D6)
                          ),
                        ),
                        Container(
                          height: 10,
                          width: MediaQuery.sizeOf(context).width*0.33,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                              color: Color(0xff591A0E)
                          ),
                        ),
                      ],
                    ),
                    AppStyle.gap(5.0),

                    Text('Music Wiper',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF0F0F0)
                      ),
                    ),
                    AppStyle.gap(5.0),

                    Row(children: [
                      Text('#Ambition',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF0F0F0)
                        ),
                      ),
                      AppStyle.gap(10.0),
                      Text('#Inspiration',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF0F0F0)
                        ),
                      ),
                      AppStyle.gap(10.0),
                      Text('#Motivational',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF0F0F0)
                        ),
                      ),
                    ],
                    ),
                    AppStyle.gap(10.0),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.visibility, color: Color(0xffF0F0F0),),
                            AppStyle.gap(5.0),

                            Text('567.57k',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF0F0F0)
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.share, color: Color(0xffF0F0F0),),
                            AppStyle.gap(5.0),

                            Text('Share',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF0F0F0)
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.download, color: Color(0xffF0F0F0),),
                            AppStyle.gap(5.0),

                            Text('Download',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF0F0F0)
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Icon(Icons.bookmark, color: Color(0xffF0F0F0),),
                            AppStyle.gap(5.0),

                            Text('Save',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF0F0F0)
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              AppStyle.gap(45.0),

            ],
          ),
        ),
      ),
    );
  }
}
