import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_clone/data/constants.dart';
import 'package:telegram_clone/data/contact.dart';
import 'package:telegram_clone/widget/user_contacts.dart';
import 'package:telegram_clone/widget/users.dart';

class TelegramAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Contact contact = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: telegramAppBarColor,
        title: Text(
          'Telegram',
          style: TextStyle(
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: Icon(Icons.dehaze),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: ContactSearch(),
              );
            },
            color: Colors.white,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contact.count,
        itemBuilder: (context, index) => Users(contact.byIndex(index)),
      ),
    );
  }
}

class ContactSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(query),
    );
  }
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context);
  }
}
