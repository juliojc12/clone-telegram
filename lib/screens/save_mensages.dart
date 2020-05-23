import 'package:flutter/material.dart';
import 'package:telegram_clone/routes/app_routes.dart';

class SavedMensages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
          Navigator.of(context).pushNamed(AppRouter.HOME);
        }),
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {},
            ),
            Text(
              'Mensagens Salvas',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      body: Center(
        child: Container(
          child: Text('teste'),
        ),
      )
    );
  }
}