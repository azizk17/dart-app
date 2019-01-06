import 'package:flutter/material.dart';

class GroupInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _screen();
  }

  Widget _screen() {
    return Scaffold(
      appBar: AppBar(
        title: Text("info"),
      ),
      body: Text("Body"),
    );
  }
}
