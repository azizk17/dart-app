import 'package:flutter/material.dart';
import '../../wedgies/index.dart';

class UsersProfile extends StatelessWidget {
  Widget _layout = CenteredLayout(
    title: "yooo",
    child: msg(),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _layout,
    );
  }

  static Widget msg() {
    return Text(
      "Hey users page",
      textScaleFactor: 3.5,
    );
  }
}
