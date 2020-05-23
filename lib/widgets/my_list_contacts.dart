import 'package:flutter/material.dart';

class MyContactList extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onPress;

  const MyContactList({Key key, this.iconData, this.title, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Icon(iconData),
       title: Text(
         title,
         style: TextStyle(fontSize: 16),
       ),
    );
  }
}