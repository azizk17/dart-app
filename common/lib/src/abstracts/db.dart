import './model.dart';

abstract class DB {
  isExist(String id);
  save(Model m);
  getItem(String id);
  getItems(String id);
  update(String id);
  removeItem(String id);
  clear();
}
