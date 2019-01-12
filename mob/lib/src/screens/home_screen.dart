import 'package:flutter/material.dart';
import '../providers/users_provider.dart';
import 'package:common/common.dart' show UsersBloc, Bloc;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Text(
            "hello!!",
            textScaleFactor: 2.3,
          ),
        ),
      ),
    );
  }
}
