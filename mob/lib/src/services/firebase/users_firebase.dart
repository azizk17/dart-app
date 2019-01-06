import 'package:common/common.dart' show Firebase;
import 'package:cloud_firestore/cloud_firestore.dart';

class UsersFirebase extends Firebase {
  @override
  createItem(m) {
    // TODO: implement createItem
  }

  @override
  fetchItem(String id) {
    // TODO: implement fetchItem
  }

  @override
  fetchItems() {
    var items = Firestore.instance.collection('users').snapshots();
    return items;
  }

  @override
  removeItem(String id) {
    // TODO: implement removeItem
  }

  @override
  updateItem(m) {
    // TODO: implement updateItem
  }
}
