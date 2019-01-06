import './service.dart';

abstract class Firebase<Model> extends Service {
  /**
   * fetch item by id
   */
  fetchItem(String id);
  /**
   * create a new item
   */
  createItem(Model m);
  /**
   * update an item
   */
  updateItem(Model m);
  /**
   * remove an item by id
   */
  removeItem(String id);
  /**
   * get a set of items
   */
  fetchItems();
}
