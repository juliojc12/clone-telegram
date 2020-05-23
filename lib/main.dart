import 'package:flutter/material.dart';
import 'package:telegram_clone/routes/app_routes.dart';
import 'package:telegram_clone/screens/constact.dart';
import 'package:telegram_clone/screens/home_page.dart';
import 'package:telegram_clone/screens/save_mensages.dart';
import 'constants/constants.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: blueTelegram,
        accentColor: Color(0xFFE7EBF0),
        backgroundColor: Colors.white,
      ),
      routes: {
        AppRouter.HOME: (_) => HomePage(),
        AppRouter.CONTACT: (_) => Contacts(),
        AppRouter.SAVEDMENSAGES: (_) => SavedMensages(),
      },
    );
  }
}