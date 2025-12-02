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
        leading: Icon(iconData),
        title: Text(title),
        onTap: onTap
    );
  }
}