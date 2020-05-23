import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:telegram_clone/routes/app_routes.dart';
import 'package:telegram_clone/widget/app_bar.dart';
import 'package:telegram_clone/widget/user_contacts.dart';

import 'data/constants.dart';
import 'data/contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => Contact(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: telegramAppBarColor,
        ),
        routes: {
          AppRoutes.CONTACTS: (_) => UserContacts(),
          AppRoutes.HOME: (_) => TelegramAppBar(),
        },
      ),
    );
  }
}
