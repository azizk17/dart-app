import 'package:flutter/material.dart';

class UnAuthicatedWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("logo"),
          Text(
            "welcome",
            textScaleFactor: 3.4,
          ),
          Text("read terms"),
          FlatButton(
            onPressed: () => 0,
            child: Text("agree & contnue"),
          )
        ],
      ),
    );
  }
}
