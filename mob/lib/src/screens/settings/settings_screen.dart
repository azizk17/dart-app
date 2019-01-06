import 'package:flutter/material.dart';
import '../../providers/settings_provider.dart';
import '../../services/firebase/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SettingsProvider(
      child: BuildSettingsScreen(),
    );
  }
}

class BuildSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _screen(context);
  }

  Widget _screen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("settings"),
        centerTitle: false,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: _list(context),
    );
  }

  Widget _list(BuildContext context) {
    final bloc = SettingsProvider.of(context);
    return ListView(
      children: <Widget>[
        _item(context, "sss", Icons.map, "/settings/profile"),
        _divider(),
        _item(context, "Map", Icons.map, "path"),
        _divider(),
        _item(context, "Map", Icons.map, "path"),
        _divider(),
        _item(context, "Map", Icons.map, "path"),
        _streamList(context),
        FlatButton(
          child: Text('TEST Firebase'),
          onPressed: () => bloc.fetchItems("sss"),
        ),
        _divider(),
      ],
    );
  }

  Widget _divider() {
    return Divider(
      indent: 44.0,
    );
  }

  Widget _item(BuildContext context, String title, IconData icon, String path) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: 30.2,
      ),
      onTap: () => Navigator.pushNamed(context, path),
    );
  }

  Widget _streamList(BuildContext context) {
    final bloc = SettingsProvider.of(context);
    return StreamBuilder(
      stream: bloc.items,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text(
            "NO DATA",
            style: TextStyle(color: Colors.red),
          );
        }

        return Text(
          snapshot.data.toString(),
          textScaleFactor: 2.2,
        );
      },
    );
  }
}
