import 'package:flutter/material.dart';
import '../../../core/app_style.dart';
import '../edit_profile_screen.dart';
import '../sound_details_screen.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key, this.fromBottomNavber = false});

  final bool fromBottomNavber;

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      // body: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 20.0),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         AppStyle.gap(70.0),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             IconButton(
      //                 onPressed: (){
      //
      //                 },
      //                 icon: Icon(Icons.arrow_forward, color: Color(0xffFEF0D6), size: 30.0,)
      //             ),
      //             AppStyle.gap(5.0),
      //             Text('Profile',
      //               style: TextStyle(
      //                   fontSize: 16.0,
      //                   fontWeight: FontWeight.bold,
      //                   color: Color(0xffFEF0D6)
      //               ),
      //             ),
      //
      //             TextButton(
      //                 onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfileScreen())),
      //                 child: Text('Edit',
      //                   style: TextStyle(
      //                       fontSize: 16.0,
      //                       fontWeight: FontWeight.bold,
      //                       color: Color(0xffFEF0D6)
      //                   ),
      //                 )
      //             )
      //           ],
      //         ),
      //         AppStyle.gap(20.0),
      //
      //         Container(
      //           height: 120,
      //           width: 100,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(25.0),
      //               image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpS2jXFB6LH0E_CwixZJydltAkEw56cWgUZZXcKuWYsB_62QdktUvv1l4&s'))
      //           ),
      //         ),
      //         AppStyle.gap(10.0),
      //
      //         Text('Eduardo Amaral',
      //           style: TextStyle(
      //               fontSize: 20.0,
      //               fontWeight: FontWeight.bold,
      //               color: Color(0xffFEF0D6)
      //           ),
      //         ),
      //         AppStyle.gap(5.0),
      //
      //         Text('Software Engineer',
      //           style: TextStyle(
      //               fontSize: 14.0,
      //               fontWeight: FontWeight.w500,
      //               color: Color(0xffc6c2bd)
      //           ),
      //         ),
      //         AppStyle.gap(20.0),
      //
      //         Container(
      //           padding: EdgeInsets.symmetric(
      //             horizontal: 20.0,
      //             vertical: 10.0
      //           ),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
      //             border: Border.all(
      //               width: 2.0,
      //               color: Color(0xffc6c2bd)
      //             )
      //           ),
      //
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Column(
      //                 children: [
      //                   Text('5',
      //                     style: TextStyle(
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Color(0xffFEF0D6)
      //                     ),
      //                   ),
      //                   AppStyle.gap(5.0),
      //
      //                   Text('Posts',
      //                     style: TextStyle(
      //                         fontSize: 14.0,
      //                         fontWeight: FontWeight.w500,
      //                         color: Color(0xffc6c2bd)
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Column(
      //                 children: [
      //                   Text('1,7K',
      //                     style: TextStyle(
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Color(0xffFEF0D6)
      //                     ),
      //                   ),
      //                   AppStyle.gap(5.0),
      //
      //                   Text('Followers',
      //                     style: TextStyle(
      //                         fontSize: 14.0,
      //                         fontWeight: FontWeight.w500,
      //                         color: Color(0xffc6c2bd)
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               Column(
      //                 children: [
      //                   Text('2,3K',
      //                     style: TextStyle(
      //                         fontSize: 20.0,
      //                         fontWeight: FontWeight.bold,
      //                         color: Color(0xffFEF0D6)
      //                     ),
      //                   ),
      //                   AppStyle.gap(5.0),
      //
      //                   Text('Following',
      //                     style: TextStyle(
      //                         fontSize: 14.0,
      //                         fontWeight: FontWeight.w500,
      //                         color: Color(0xffc6c2bd)
      //                     ),
      //                   ),
      //                 ],
      //               )
      //             ],
      //           ),
      //         ),
      //         AppStyle.gap(20.0),
      //
      //         SizedBox(
      //           height: MediaQuery.sizeOf(context).height,
      //           child: ListView.builder(
      //               shrinkWrap: true,
      //               itemCount: 5,
      //               physics: NeverScrollableScrollPhysics(),
      //               itemBuilder: (context, index) {
      //                 return GestureDetector(
      //                   onTap: () {
      //                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => SoundDetailsScreen()));
      //                   },
      //                   child: Container(
      //                     padding: EdgeInsets.only(bottom: 20.0),
      //                     child: Column(
      //                       crossAxisAlignment:CrossAxisAlignment.start,
      //                       children: [
      //                         Container(
      //                           padding: EdgeInsets.all(15.0),
      //                           margin: EdgeInsets.only(bottom: 10.0),
      //                           height: 227,
      //                           width: MediaQuery.sizeOf(context).width,
      //                           decoration: BoxDecoration(
      //                               borderRadius: BorderRadius.all(Radius.circular(10.0)),
      //                               gradient: LinearGradient(colors: [
      //                                 Color(0xff2A7B9B),
      //                                 Color(0xff57C785),
      //                                 Color(0xffEDDD53)
      //                               ])
      //                           ),
      //                           child: Column(
      //                             mainAxisAlignment: MainAxisAlignment.end,
      //                             children: [
      //                               Row(
      //                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                                 children: [
      //                                   Text('Daily UI #005 - App Icon',
      //                                     textAlign: TextAlign.justify,
      //                                     style: TextStyle(
      //                                         fontSize: 18,
      //                                         fontWeight: FontWeight.bold,
      //                                         color: Colors.white
      //                                     ),
      //                                   ),
      //
      //                                   Row(
      //                                     children: [
      //                                       Icon(Icons.heart_broken_sharp, color: Colors.white),
      //                                       Text('8',
      //                                         style: TextStyle(
      //                                             fontSize: 18,
      //                                             fontWeight: FontWeight.bold,
      //                                             color: Colors.white
      //                                         ),
      //                                       ),
      //                                     ],
      //                                   )
      //                                 ],
      //                               ),
      //                             ],
      //                           ),
      //                         )
      //                       ],
      //                     ),
      //                   ),
      //                 );
      //               }
      //           ),
      //         ),
      //         AppStyle.gap(45.0),
      //       ],
      //     ),
      //   ),
      // ),
      /// new code
      body: CustomScrollView(
        slivers: [

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  AppStyle.gap(70),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.fromBottomNavber?SizedBox.shrink():Icon(Icons.arrow_forward, color: Color(0xffFEF0D6)),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFEF0D6)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfileScreen()));
                        },
                        child: Text(
                          'Edit',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFEF0D6)),
                        ),
                      )
                    ],
                  ),

                  AppStyle.gap(20),

                  Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpS2jXFB6LH0E_CwixZJydltAkEw56cWgUZZXcKuWYsB_62QdktUvv1l4&s'),
                      ),
                    ),
                  ),

                  AppStyle.gap(10),
                  Text('Eduardo Amaral',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFEF0D6))),
                  AppStyle.gap(5),
                  Text('Software Engineer',
                      style: TextStyle(color: Color(0xffc6c2bd))),

                  AppStyle.gap(20),
                ],
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 120,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2A7B9B),
                              Color(0xff57C785),
                              Color(0xffEDDD53),
                            ],
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Daily UI #005 - App Icon',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.favorite, color: Colors.white),
                                  SizedBox(width: 4),
                                  Text('8',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                childCount: 5,
              ),
            ),
          ),

          SliverToBoxAdapter(child: AppStyle.gap(40)),
        ],
      ),

    );
  }
}
