import 'package:flutter/material.dart';
import 'package:sqflitetutorial/presentation/pages/add_page.dart';
import 'package:sqflitetutorial/presentation/pages/contacts_page.dart';
import 'package:sqflitetutorial/presentation/pages/edit_contact.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/homePage': (context) => ContactsPage(),
        '/addContactPage': (context) => AddContactPage(),
        '/edit': (context) => EditContactPage(),
      },
      home: ContactsPage(),
    );
  }
}
