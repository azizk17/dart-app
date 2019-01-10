import '../../models/index.dart' show User;

abstract class UsersService {
  fetchItems();
  fetchItem(String id);
  update(User data);
}
