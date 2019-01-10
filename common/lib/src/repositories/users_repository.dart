import 'package:meta/meta.dart';
import '../services/abstracts/index.dart' show UsersService;
import '../db/index.dart' show UsersDB;
import '../models/index.dart' show User;

class UsersRepository {
  final UsersService service;
  final UsersDB db;
  UsersRepository({
    @required this.service,
    @required this.db,
  });
  getItems() {
    // do smoe logic here
    return service.fetchItems();
  }

  getItem(String id) {
    return service.fetchItem(id);
  }

  update(User data) {
    return service.update(data);
  }
}
