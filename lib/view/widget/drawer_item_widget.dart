import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData
  });
  final VoidCallback onTap;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(iconData, color: Color(0xff591A0E)),
        title: Text(title,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xff591A0E),
            fontWeight: FontWeight.bold
          ),
        ),
        onTap: onTap
    );
  }
}