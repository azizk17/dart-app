import 'package:flutter/material.dart';
import '../providers/index.dart' show UsersProvider;

/***
 * 
 *  !This screen for testing and development illustration ONLY
 * 
 */
class UsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UsersProvider(
      child: BuildUsersList(),
    );
  }
}

class BuildUsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _screen(context),
    );
  }

  Widget _screen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TESTING SCREEN"),
      ),
      body: Column(
        children: <Widget>[
          _msg(context),
          _list(context),
        ],
      ),
    );
  }

  Widget _msg(BuildContext context) {
    return Text("TESTING SCREEEN");
  }

  Widget _list(BuildContext context) {
    final bloc = UsersProvider.of(context);
    return StreamBuilder(
      stream: bloc.items,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text(
            "NO DATA",
            textScaleFactor: 2.2,
          );
        }
        return Text(snapshot.data.toString());
      },
    );
  }
}
