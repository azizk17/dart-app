import 'package:flutter/material.dart';

import 'package:mob/src/locale.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return Center(
        child: Container(
      padding:
          EdgeInsets.only(top: 90.0, right: 30.0, bottom: 30.0, left: 30.0),
      color: Colors.lime,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _logo(),
          _welcomeMsg(context),
          _termsMsg(context),
          _buttons(context),
        ],
      ),
      alignment: Alignment(0.0, 0.0),
    ));
  }

  Widget _logo() {
    return Icon(
      Icons.laptop_mac,
      size: 130.0,
    );
  }

  Widget _welcomeMsg(BuildContext context) {
    return Text(
      AppLocalizations.of(context).hello,
      style: Theme.of(context).textTheme.headline,
    );
  }

  Widget _termsMsg(BuildContext context) {
    return Text(
      AppLocalizations.of(context).termsMsg,
      style: Theme.of(context).textTheme.body1,
    );
  }

  Widget _buttons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text(
            AppLocalizations.of(context).btnAgree,
          ),
          onPressed: () => Navigator.pushNamed(context, "/login"),
        ),
      ],
    );
  }
}
