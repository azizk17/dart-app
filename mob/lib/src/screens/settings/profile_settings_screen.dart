import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _screen();
  }

  Widget _screen() {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile setiingd"),
      ),
      body: Text("data"),
    );
  }
}
