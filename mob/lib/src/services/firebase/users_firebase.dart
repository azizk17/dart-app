import 'package:common/common.dart' show UsersService, User;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:convert';

class UsersFirebase implements UsersService {
  final _itemsFetcher = PublishSubject<User>();
  final _itemsOutputs = BehaviorSubject<Map<String, User>>();

  final _singleItemOutputs = BehaviorSubject<User>();

  UsersFirebase() {
    _itemsFetcher.transform(_itemsOutputsTransformer()).pipe(_itemsOutputs);
  }
  _itemsOutputsTransformer() {
    return ScanStreamTransformer(
      (Map<String, User> cache, User doc, index) {
        print("HERE: " + index.toString() + " and ID: " + doc.toString());
        // cache = _fetchItems();
        cache[doc.id] = doc;
        return cache;
      },
      <String, User>{},
    );
  }

  @override
  fetchItems() {
    var items = Firestore.instance.collection('users').snapshots();
    items.listen((change) => change.documentChanges.forEach((doc) {
          _itemsFetcher.sink.add(User.parseFirebase(doc.document));
        }));

    return _itemsOutputs.stream;
  }

  @override
  removeItem(String id) {
    // TODO: implement removeItem
  }

  Future<void> update(User data) {
    DocumentReference ref =
        Firestore.instance.collection("users").document(data.id);
    Firestore.instance.runTransaction((transaction) async {
      await transaction.update(ref, data.toJson()).catchError((e) => print(e));
    });
  }

  // Future<User> create(User data) async {
  //   var v = data.toJson();
  //   print("v type is $v.runtimeType AND ");
  //   return Firestore.instance.collection('users').add(v).catchError((e) {
  //     print(e);
  //   }).then((doc) => User.parseFirebase(doc));
  // }

  remove(DocumentReference ref) async {
    Firestore.instance.runTransaction((transaction) async {
      await transaction.delete(ref).catchError((e) => print(e));
    });
  }

  @override
  fetchItem(String id) {
    var items = Firestore.instance.collection('users').document(id).snapshots();
    items.listen((doc) => _singleItemOutputs.sink.add(User.parseFirebase(doc)));
    return _singleItemOutputs.stream;
  }

  void dispose() {
    _itemsFetcher.close();
    _itemsOutputs.close();
    _singleItemOutputs.close();
  }
}
