import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import './src/routes.dart';
import './src/locale.dart';
import './src/themes/jeddTheme.dart';
import './src/screens/index.dart' show UsersList;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale('ar', ''),
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'SA'), // Arabic
        const Locale('en', 'US'), // English
      ],
      theme: jeddTheme,
      home: UsersList(),
      // onGenerateRoute: routes,
    );
  }
}
