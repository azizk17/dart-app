import 'package:common/common.dart';
import 'package:flutter/widgets.dart';
import '../services/firebase/index.dart';
import '../db/index.dart' show SettingsDB;

class SettingsProvider extends InheritedWidget {
  final SettingsBloc bloc;
  static Service _service = SettingsFirebase();
  static DB _db = SettingsDB();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static SettingsBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(SettingsProvider)
              as SettingsProvider)
          .bloc;

  SettingsProvider({Key key, Widget child})
      : bloc = SettingsBloc(_service, _db),
        super(child: child, key: key);
}
