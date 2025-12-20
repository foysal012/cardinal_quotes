import 'package:flutter/material.dart';
import '../../../core/app_style.dart';
import '../sound_details_screen.dart';

class SoundsScreen extends StatefulWidget {
  const SoundsScreen({super.key, this.fromBottomNavber = false});

  final bool fromBottomNavber;

  @override
  State<SoundsScreen> createState() => _SoundsScreenState();
}

class _SoundsScreenState extends State<SoundsScreen> {
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
                  widget.fromBottomNavber?SizedBox.shrink():IconButton(
                      onPressed: (){},
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

              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SoundDetailsScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                margin: EdgeInsets.only(bottom: 10.0),
                                height: 227,
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  // image: DecorationImage(image: AssetImage('assets/images/music1.png'))
                                  gradient: LinearGradient(colors: [
                                    Color(0xff2A7B9B),
                                    Color(0xff57C785),
                                    Color(0xffEDDD53)
                                  ])
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   Container(
                                     height: 165,
                                     width: 168,
                                     padding: EdgeInsets.all(10.0),
                                     decoration: BoxDecoration(
                                      color: Color(0xffFEF0D6),
                                      borderRadius: BorderRadiusGeometry.all(Radius.circular(15.0))
                                     ),
                                     child: Column(
                                       children: [
                                         Stack(
                                           alignment: AlignmentGeometry.center,
                                           children: [
                                             Image.asset('assets/images/music1.png'),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Icon(Icons.multitrack_audio, color: Color(0xffFEF0D6),
                                                  size: 30,
                                                 ),
                                                 Icon(Icons.multitrack_audio, color: Color(0xffFEF0D6),
                                                  size: 50,
                                                 ),
                                                 Icon(Icons.multitrack_audio, color: Color(0xffFEF0D6),
                                                  size: 30,
                                                 ),
                                               ],
                                             )
                                           ],
                                         ),
                                         // AppStyle.gap(5.0),

                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Icon(Icons.play_arrow, color: Color(0xff591A0E)),
                                             Text('10.00',
                                               style: TextStyle(
                                                   fontSize: 12,
                                                   fontWeight: FontWeight.bold,
                                                   color: Color(0xff591A0E)
                                               ),
                                             )
                                           ],
                                         ),
                                         // AppStyle.gap(2.5),
                                         Container(
                                           height: 2,
                                           width: MediaQuery.sizeOf(context).width,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
                                             color: Color(0xff591A0E)
                                           ),
                                         ),
                                         // AppStyle.gap(5.0),

                                         Text('Wiper',
                                           style: TextStyle(
                                               fontSize: 14,
                                               fontWeight: FontWeight.bold,
                                               color: Color(0xff591A0E)
                                           ),
                                         )
                                       ],
                                     ),
                                   )
                                  ],
                                ),
                              ),
                              AppStyle.gap(10.0),

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
                      );
                    }
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
