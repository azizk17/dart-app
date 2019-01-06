import 'package:flutter/material.dart';

/**
 * 
 * # Colors
 */
const jeddGreen100 = const Color(0xFF62CDAC);
const jeddPink50 = const Color(0xFFFEEAE6);
const jeddPink100 = const Color(0xFFFEDBD0);
const jeddPink300 = const Color(0xFFFBB8AC);
const jeddPink400 = const Color(0xFFEAA4A4);

const jeddBrown900 = const Color(0xFF442B2D);

const jeddErrorRed = const Color(0xFFC5032B);

const jeddSurfaceWhite = const Color(0xFFFFFBFA);
const jeddBackgroundWhite = Colors.white;

// TODO: Build a Shrine Theme (103)
final ThemeData jeddTheme = _buildJeddTheme();

ThemeData _buildJeddTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: jeddBrown900,
    primaryColor: jeddGreen100,
    buttonColor: jeddGreen100,
    scaffoldBackgroundColor: jeddBackgroundWhite,
    cardColor: jeddBackgroundWhite,
    textSelectionColor: jeddGreen100,
    errorColor: jeddErrorRed,
    // TODO: Add the text themes (103)
    textTheme: _buildJeddTextTheme(base.textTheme),
    primaryTextTheme: _buildJeddTextTheme(base.primaryTextTheme),
    // TODO: Add the icon themes (103)
    primaryIconTheme: base.iconTheme.copyWith(
      color: jeddBrown900,
    ),
    // TODO: Decorate the inputs (103)
  );
}

TextTheme _buildJeddTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: jeddBrown900,
        bodyColor: jeddBrown900,
      );
}
