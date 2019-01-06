import 'package:flutter/material.dart';
import '../../wedgies/layouts/default_layout.dart';

class GroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _screen(context);
  }

  Widget _screen(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          child: Text("groupname"),
          onTap: () => Navigator.pushNamed(ctx, "/groups/info"),
        ),
      ),
      body: _activity(),
    );
  }

  Widget _activity() {
    return Text("activity");
  }
}
