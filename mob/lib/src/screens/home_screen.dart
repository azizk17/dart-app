import 'package:flutter/material.dart';
import '../providers/users_provider.dart';
import 'package:common/common.dart' show UsersBloc, Bloc;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UsersProvider(
      child: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  //constructor
  Screen();
  @override
  Widget build(BuildContext context) {
    final bloc = UsersProvider.of(context);
    return Container(
      child: _screen(context, bloc),
    );
  }

  Widget _screen(BuildContext context, UsersBloc bloc) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        actions: <Widget>[
          _settings_button(context),
          _create_Button(context),
        ],
      ),
    );
  }

  Widget _settings_button(BuildContext ctx) {
    return IconButton(
      icon: Icon(Icons.settings),
      iconSize: 30.0,
      onPressed: () => Navigator.pushNamed(ctx, "/settings"),
    );
  }

  Widget _create_Button(BuildContext ctx) {
    return IconButton(
      icon: Icon(Icons.mode_edit),
      iconSize: 30.0,
      onPressed: () => Navigator.pushNamed(ctx, "/groups/create"),
    );
  }

  Widget _button(BuildContext context, UsersBloc bloc) {
    return RaisedButton(
      child: Text(
        'Story',
        textScaleFactor: 2.3,
      ),
      onPressed: () {
        // bloc.items();
        Navigator.pushNamed(context, '/me');
      },
    );
  }
}

Widget _enText() {
  return Text(
    "welcome eveyone",
    textScaleFactor: 2.2,
  );
}

Widget _rtlText() {
  return Text(
    "اهلا وسهلا ومرحبا",
    textScaleFactor: 2.2,
  );
}
