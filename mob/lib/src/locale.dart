import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './i18n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /**
   * 
   * local messages
   */

  String get title {
    return Intl.message('Hello world App',
        name: 'title', desc: 'The application title');
  }

  String get hello {
    return Intl.message('Hello', name: 'hello');
  }

  // buttons
  String get btnSend {
    return Intl.message('Send', name: 'buttonSend');
  }

  String get btnCancel {
    return Intl.message('Cancel', name: 'btnCancel');
  }

  String get btnSave {
    return Intl.message('Save', name: 'btnSave');
  }

  String get btnRegister {
    return Intl.message('Register', name: 'btnRegister');
  }

  String get btnLogin {
    return Intl.message('Login', name: 'btnLogin');
  }

  String get btnAgree {
    return Intl.message('Agree', name: 'btnAgree');
  }

  String get btnReSend {
    return Intl.message('Enter your phone number', name: 'enterYourPhone');
  }

  // messages
  String get termsMsg {
    return Intl.message(
        'Read our Privacy terms. Tap "Agree" to accept the terms of services',
        name: 'termsMsg');
  }

  String get enterYourPhoneMsg {
    return Intl.message('Enter your phone number', name: 'enterYourPhone');
  }

  String get enterPhoneCodeMsg {
    return Intl.message('Enter varification code', name: 'enterPhoneCode');
  }

  String get resendMsg {
    return Intl.message('Wait 3 mintes to send agine', name: 'resendMsg');
  }

  // validation
  String get phoneFormatErr {
    return Intl.message('Please enter a correct phone number',
        name: 'phoneFormatErr');
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar', 'pt'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}
