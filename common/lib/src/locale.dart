import 'dart:async';
import 'package:intl/intl.dart';
import './i18n/messages_all.dart';

class AppLocalizations {
  // supported languages
  final _supported = ['ar', 'en'];
  List<String> get supported => _supported;
  static Future<AppLocalizations> load(locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  String get button => Intl.message(
        'click here',
        name: 'button',
        desc: 'press button',
      );
}

/**
 *    intil class to create local template
 * 
 */
class IntlMessages {
  String get button => Intl.message(
        'click here',
        name: 'button',
        desc: 'press button',
      );
  String get title => Intl.message(
        'get the app title',
        name: 'title',
        desc: 'get app title',
      );
}
