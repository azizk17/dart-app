import 'package:flutter/material.dart';
import 'package:mob/src/locale.dart';

class PhoneVerifyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin:
            EdgeInsets.only(top: 90.0, right: 30.0, bottom: 30.0, left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _codeMsg(context),
            _codeInput(context),
            _sendBtn(context),
          ],
        ),
      ),
    );
  }

  Widget _codeMsg(BuildContext context) {
    return Text(AppLocalizations.of(context).enterPhoneCodeMsg);
  }

  Widget _codeInput(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "dwwe wew",
      ),
      keyboardType: TextInputType.number,
      keyboardAppearance: Brightness.dark,
    );
  }

  Widget _sendBtn(BuildContext context) {
    return FlatButton(
      child: Text(AppLocalizations.of(context).btnSend),
      onPressed: () => Navigator.pushNamed(context, '/'),
    );
  }
}
