import 'package:flutter/material.dart';
import 'package:common/common.dart' show UsersBloc, UsersRepository;
import '../services/firebase/users_firebase.dart';
import '../db/db.dart' show UsersLocalDB;
// export 'stories_bloc.dart';

class UsersProvider extends InheritedWidget {
  final UsersBloc bloc;
  // static UsersFirebase service = UsersFirebase();
  // ### Inject service and local db to repository
  static UsersRepository _repo =
      UsersRepository(service: UsersFirebase(), db: UsersLocalDB());
  // static UsersDB _db = UsersLocalDB();

  UsersProvider({Key key, Widget child})
      : bloc = UsersBloc(_repo),
        super(key: key, child: child);

  bool updateShouldNotify(_) => true;

  static UsersBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(UsersProvider)
            as UsersProvider)
        .bloc;
  }
}
