import 'package:cardinal_quotes/core/app_style.dart';
import 'package:flutter/material.dart';

import '../screen/medicine_note_screen.dart';
import 'drawer_item_widget.dart';

class MyDrawerScreen extends StatefulWidget {
  const MyDrawerScreen({super.key});

  @override
  State<MyDrawerScreen> createState() => _MyDrawerScreenState();
}

class _MyDrawerScreenState extends State<MyDrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffFEF0D6),
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close, color: Colors.red)
            ),
          ),
          DrawerHeader(
            child: Text('\"Please Come from within\nDo not seek it without\"\nBuddha',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff591A0E),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),

          DrawerItemWidget(
            iconData: Icons.ice_skating_outlined,
            title: 'Explore',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.propane_tank_sharp,
            title: 'Popular',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.assignment_late,
            title: 'Latest',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.add_box_outlined,
            title: 'Cardinal Sound',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.abc,
            title: 'Wallpaper',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.ac_unit,
            title: 'Natural Sound',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.access_alarm_rounded,
            title: 'Sleeping',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.accessibility_outlined,
            title: 'Meditation',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.branding_watermark,
            title: 'Breathing Exercise',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.account_balance,
            title: 'Meditational Audios',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.account_box,
            title: 'Top Quotes',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.person,
            title: 'Soul Check-in',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.join_full_outlined,
            title: 'Scared Journal',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.note,
            title: 'Medicine Note',
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MedicineNoteScreen()));
            },
          ),

          DrawerItemWidget(
            iconData: Icons.card_giftcard,
            title: 'Memorial Card',
            onTap: (){

            },
          ),

          DrawerItemWidget(
            iconData: Icons.bookmark,
            title: 'Save',
            onTap: (){

            },
          ),
          AppStyle.gap(10.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Log Out'),
              AppStyle.gap(10.0),

              Icon(Icons.logout, color: Colors.red,)
            ],
          ),
          AppStyle.gap(10.0),
        ],
      ),
    );
  }
}
