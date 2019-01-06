import 'package:flutter/material.dart';
import '../index.dart' show MainDrawer;

class CenteredLayout extends StatelessWidget {
  final String title;
  final Widget child;
  CenteredLayout({Key key, this.title, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        endDrawer: MainDrawer(),
        body: Center(
          child: this.child,
        ),
      ),
    );
  }
}
