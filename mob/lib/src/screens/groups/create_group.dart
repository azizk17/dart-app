import 'package:flutter/material.dart';

class CreateGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _screen(),
    );
  }

  Widget _screen() {
    return Scaffold(
      appBar: AppBar(
        title: Text("sne"),
        toolbarOpacity: 0.8,
        brightness: Brightness.light,
      ),
      body: _form(),
    );
  }

  Widget _form() {
    return Text("sss");
  }
}
