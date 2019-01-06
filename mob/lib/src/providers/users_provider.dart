import 'package:flutter/material.dart';
import 'package:common/common.dart' show UsersBloc;
import '../services/firebase/users_firebase.dart';
// export 'stories_bloc.dart';

class UsersProvider extends InheritedWidget {
  final UsersBloc bloc;
  // static UsersFirebase service = UsersFirebase();
  final SettingsBloc bloc;
  static Service _service = UsersFirebase();
  static DB _db = SettingsDB();

  UsersProvider({Key key, Widget child})
      : bloc = UsersBloc(_service, _db),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static UsersBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(UsersProvider)
            as UsersProvider)
        .bloc;
  }
}
