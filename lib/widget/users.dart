import 'package:flutter/material.dart';
import 'package:telegram_clone/data/contact.dart';

class Users extends StatelessWidget {
  final Contact contact;
  const Users(this.contact);
  @override
  Widget build(BuildContext context) {
    final avatar = contact.avatarUrl == null || contact.avatarUrl.isEmpty
        ? CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(contact.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(contact.name),
      subtitle: Text('visto por ultimo às 14:38'),
      trailing: Text(
        "14:58",
        style: TextStyle(
          fontSize: 10,
          color: Color(0xFFACADAC),
        ),
      ),
    );
  }
}
