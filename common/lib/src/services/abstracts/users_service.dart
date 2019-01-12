import '../../models/models.dart' show User;
import 'dart:async';

abstract class UsersService<User> {
  // TODO: return type
  fetchItems();
  fetchItem(String id);
  Future<User> create(User data);
  Future<void> update(User data);
  Future<void> delete(String id);
}
