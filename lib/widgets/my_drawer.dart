import 'package:flutter/material.dart';
import 'package:telegram_clone/routes/app_routes.dart';

import 'my_list_contacts.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars1.githubusercontent.com/u/28211705?s=460&u=301644c6e05046797986d2b935bf68f7064e83f7&v=4'),
            ),
            accountName: Text("Julio Cesar"),
            accountEmail: Text("juliojc12@gmail.com"),
          ),
          MyContactList(
            iconData: Icons.group,
            title: "Novo Grupo",
            onPress: () {},
          ),
          MyContactList(
            iconData: Icons.lock,
            title: "Novo Chat Secreto",
            onPress: () {},
          ),
          MyContactList(
            iconData: Icons.question_answer,
            title: "Novo Canal",
            onPress: () {},
          ),
          MyContactList(
            iconData: Icons.person,
            title: "Contatos",
            onPress: () {},
          ),
          MyContactList(
            iconData: Icons.call,
            title: "Chamadas",
            onPress: () {},
          ),
          MyContactList(
            iconData: Icons.bookmark,
            title: "Mensagens Salvas",
            onPress: () {
              Navigator.of(context).pushNamed(AppRouter.SAVEDMENSAGES);
            },
          ),
          MyContactList(
            iconData: Icons.settings,
            title: "Configurações",
            onPress: () {},
          ),
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: .2),
              ),
            ),
            child: MyContactList(
              iconData: Icons.person_add,
              title: "Convidar Amigos",
              onPress: () {},
            ),
          ),
          MyContactList(
            iconData: Icons.help,
            title: "Perguntas Frequentes",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
