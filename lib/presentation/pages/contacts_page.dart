import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqflitetutorial/presentation/widgets/contacts_list.dart';
import 'package:sqflitetutorial/presentation/widgets/horizontal_button_bar.dart';

class ContactsPage extends StatefulWidget {
  ContactsPage({Key key})
      : super(
          key: key,
        );

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQFLite Tutorial'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              HorizontalButtonBar(),
            ],
          ),
        ),
      ),
    );
  }
}
