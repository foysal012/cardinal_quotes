import 'package:flutter/material.dart';
import '../../../core/app_style.dart';
import '../../widget/my_drawer_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: MyDrawerScreen(),
      backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppStyle.gap(70.0),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                        flex:2,
                        child: IconButton(
                            onPressed: (){
                              scaffoldKey.currentState?.openDrawer();
                            },
                            icon: Icon(Icons.menu, color: Color(0xffFEF0D6))
                        )
                    ),
                    AppStyle.gap(5.0),
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
              ),
              AppStyle.gap(10.0),
          
              SizedBox(
                height: 500,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0
                    ),
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Color(0xffFEF0D6),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Color(0xff591A0E)),
                            AppStyle.gap(2.5),
                            Text('Popular',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff591A0E)
                            ))
                          ],
                        ),
                      );
                    },
                ),
              ),
              AppStyle.gap(10.0),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Wallpaper',
                    style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFEF0D6)
                            )
                  ),
          
                  Text('See All >',
                    style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFEF0D6)
                            )
                  ),
                ],
              ),
              AppStyle.gap(5.0),
              SizedBox(
                height: 120.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          color: Color(0xffFEF0D6),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                    );
                  },
                ),
              ),
              AppStyle.gap(10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Quotes',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFEF0D6)
                      )
                  ),

                  Text('See All >',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFEF0D6)
                      )
                  ),
                ],
              ),
              AppStyle.gap(5.0),
              SizedBox(
                height: 120.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          color: Color(0xffFEF0D6),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                    );
                  },
                ),
              ),
              AppStyle.gap(10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Featured Memorial Cards',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFEF0D6)
                      )
                  ),

                  Text('See All >',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFEF0D6)
                      )
                  ),
                ],
              ),
              AppStyle.gap(5.0),
              SizedBox(
                height: 120.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          color: Color(0xffFEF0D6),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                    );
                  },
                ),
              ),
              AppStyle.gap(10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Announcement',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFEF0D6)
                      )
                  ),

                  Text('See All >',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFEF0D6)
                      )
                  ),
                ],
              ),
              AppStyle.gap(5.0),
              SizedBox(
                height: 120.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: false,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width,
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                          color: Color(0xffFEF0D6),
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                      ),
                    );
                  },
                ),
              ),
              AppStyle.gap(15.0),
          
            ],
          ),
        ),
      ),
    );
  }
}
