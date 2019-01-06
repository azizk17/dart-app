import '../abstracts/index.dart';

class UsersBloc extends Bloc {
  Service _service;
  @override
  void dispose() {
    // TODO: implement dispose
  }
  UsersBloc() {
    print("here blocs");
  }
  @override
  getItem(String id) {
    print("im priniting in users block ID: " + id);
  }

  items() {
    return "sdsdd";
  }
}
