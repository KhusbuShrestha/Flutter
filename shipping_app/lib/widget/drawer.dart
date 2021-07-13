import 'dart:io';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.book),
            title: Text('Note'),
          ),
          Divider(),
          ListTile(
            onTap: () => exit(0),
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
