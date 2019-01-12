import 'package:meta/meta.dart';
import 'dart:async';
import '../services/abstracts/abstracts.dart' show UsersService;
import '../db/db.dart' show UsersDB;
import '../models/models.dart' show User;
import '../validations/validator.dart';

class UsersRepository {
  final UsersService service;
  final UsersDB db;
  UsersRepository({
    @required this.service,
    @required this.db,
  });
  /**
   *  get a collection - this function has a service call which shoud retrun a Stream or Future
   * 
   */
  Stream<dynamic> getItems({offset: int}) {
    // TODO: DB query - if items exist in local db, no need to perform a service call
    return service.fetchItems();
  }

  /**
   *  get a single item - this function has a service call which shoud retrun a Stream or Future
   */
  Stream<dynamic> getItem(String id) {
    // TODO: DB query - if item exist in local db, no need to perform a service call
    return service.fetchItem(id);
  }

  /**
   * create 
   */
  Future<User> create(User data) {
    // TODO:  validation and Authorization
    return service.create(data);
  }

  /**
   *  update a single item
   */
  Future<bool> update(User data) {
    // TODO: Validation and Authorization
    if (Validator.isEmpty(data.name))
      return Future<void>(() {
        return service.update(data);
      });
  }

  /**
   * delete item
   */
  delete(String id) {
    // TODO: Validation and Authorization

    return service.delete(id);
  }
}
