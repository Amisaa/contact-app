import 'package:contact_app/features/contacts/presentation%20/my_contacts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyContactApp());
}

class MyContactApp extends StatelessWidget {
  const MyContactApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Contact App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.brown),

        home: MyContacts(),

      );
  }
}

