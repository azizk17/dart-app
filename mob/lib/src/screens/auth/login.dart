// import 'package:flutter/material.dart';
// import 'package:mob/src/locale.dart';
// import 'package:mob/src/providers/index.dart' show SettingsProvider;

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return _provider(
//       context: context,
//       child: Scaffold(
//         body: Container(
//           margin:
//               EdgeInsets.only(top: 90.0, left: 40.0, right: 40.0, bottom: 40.0),
//           alignment: Alignment(0.0, 0.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               _msg(context),
//               _phoneInpute(context),
//               _submit(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _provider({BuildContext context, Widget child}) {
//     return SettingsProvider(
//       child: child,
//     );
//   }

//   Widget _msg(BuildContext context) {
//     return Text(
//       AppLocalizations.of(context).enterYourPhoneMsg,
//       style: Theme.of(context).textTheme.title,
//     );
//   }

//   Widget _phoneInpute(BuildContext context) {
//     return Container(
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: '05x xxx xxxx',
//           border: OutlineInputBorder(),
//         ),
//         keyboardType: TextInputType.numberWithOptions(decimal: false),
//       ),
//     );
//   }

//   Widget _submit(BuildContext context) {
//     return RaisedButton(
//       child: Text(
//         AppLocalizations.of(context).btnSave,
//       ),
//       onPressed: () => Navigator.pushNamed(context, '/phone_verify'),
//       shape: Theme.of(context).buttonTheme.shape,
//     );
//   }

//   Widget _countryCode() {
//     return IconButton(
//       icon: Icon(
//         Icons.label,
//         color: Colors.purple,
//       ),
//     );
//   }

//   _phoneValidator() {}
// }
