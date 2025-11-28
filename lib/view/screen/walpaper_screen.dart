import 'package:flutter/material.dart';
import '../../core/app_style.dart';

class WallpaperScreen extends StatefulWidget {
  const WallpaperScreen({super.key});

  @override
  State<WallpaperScreen> createState() => _WallpaperScreenState();
}

class _WallpaperScreenState extends State<WallpaperScreen> {
  dynamic selectedItem;

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
                  Text('Wallpaper',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFEF0D6)
                    ),
                  )
                ],
              ),
              AppStyle.gap(10.0),

              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.0
                  ),
                  itemCount: 15,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              flex: 7,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text('#Ambition #Inspirations',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffFEF0D6),
                                    fontWeight: FontWeight.w500
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: PopupMenuButton<SampleItem>(
                                menuPadding: EdgeInsets.all(0.5),
                                padding: EdgeInsets.all(5.0),
                                initialValue: selectedItem,
                                onSelected: (SampleItem item) {
                                  setState(() {
                                    selectedItem = item;
                                  });
                                },
                                iconColor: Color(0xffFEF0D6),
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                                  const PopupMenuItem<SampleItem>(
                                      value: SampleItem.itemOne,
                                      child: Row(
                                          children: [
                                            Icon(Icons.remove_red_eye),
                                            Text('567.57K')
                                          ]
                                      )
                                  ),
                                  const PopupMenuItem<SampleItem>(
                                      value: SampleItem.itemTwo,
                                      child: Row(
                                          children: [
                                            Icon(Icons.bookmark),
                                            Text('Save')
                                          ]
                                      )
                                  ),
                                  const PopupMenuItem<SampleItem>(
                                      value: SampleItem.itemThree,
                                      child: Row(
                                          children: [
                                            Icon(Icons.screen_share),
                                            Text('Share')
                                          ]
                                      )
                                  ),
                                  const PopupMenuItem<SampleItem>(
                                      value: SampleItem.itemFour,
                                      child: Row(
                                          children: [
                                            Icon(Icons.download),
                                            Text('Download')
                                          ]
                                      )
                                  ),
                                  const PopupMenuItem<SampleItem>(
                                      value: SampleItem.itemFive, child: Row(
                                      children: [
                                        Icon(Icons.settings_brightness),
                                        Text('Set')
                                      ]
                                  )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        AppStyle.gap(5.0),
                        Container(
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
                        ),
                      ],
                    );
                  },
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
enum SampleItem { itemOne, itemTwo, itemThree , itemFour, itemFive}