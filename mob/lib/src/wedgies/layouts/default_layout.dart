import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  Widget _child;
  String _title;
  DefaultLayout(this._title, this._child);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._title),
      ),
      body: Container(
        child: this._child,
        color: const Color(0xFF00FF00),
      ),
    );
  }
}
