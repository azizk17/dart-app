import 'package:common/common.dart' show UsersService, User;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:convert';

class UsersFirebase implements UsersService<User> {
  /**
   * 
   * This class handels all service calls to firebase
   */
  UsersFirebase();

  @override
  fetchItems() {
    return Firestore.instance.collection('users').snapshots();
  }

  @override
  Future<void> update(User data) {
    DocumentReference ref =
        Firestore.instance.collection("users").document(data.id);
    return Firestore.instance.runTransaction((transaction) async {
      await transaction.update(ref, data.toJson()).catchError((e) => print(e));
    });
  }

  @override
  fetchItem(String id) {
    var item = Firestore.instance.collection('users').document(id).snapshots();
    return item;
  }

  @override
  Future<User> create(User data) {
    // convert user object (data) to Map<String, dynamic>
    Map<String, dynamic> json = data.toJson();
    return Firestore.instance.collection('users').add(json).catchError((e) {
      print(e);
    }).then((doc) => User.parseFirebase(doc));
  }

  @override
  Future<void> delete(String id) async {
    // get doc refrence by id
    DocumentReference ref = Firestore.instance.collection("users").document(id);
    return Firestore.instance.runTransaction((transaction) async {
      await transaction.delete(ref).catchError((e) => print(e));
    });
  }
}
