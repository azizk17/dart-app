import 'package:flutter/material.dart';

class Local extends StatelessWidget {
  Widget _child;
  Local(this._child);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _child,
    );
  }
}
