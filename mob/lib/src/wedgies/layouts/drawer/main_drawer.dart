import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _drawer(context),
    );
  }
}

Widget _drawer(BuildContext context) {
  return Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the Drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Drawer Header'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('login'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pushNamed(context, '/auth/login');
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
