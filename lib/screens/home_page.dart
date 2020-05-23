import 'package:cod3r_crud/constants/constants.dart';
import 'package:cod3r_crud/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueTelegram,
      appBar: AppBar(
        title: Text('Telegram'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchContact(),
              );
            },
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

class SearchContact extends SearchDelegate {
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
      child: Text(query),);
  }
  @override
  ThemeData appBarTheme(BuildContext context){
    return Theme.of(context);
  }
}
  