import '../abstracts/index.dart' show DB, Bloc;
import '../services/abstracts/index.dart' show UsersService;
import 'package:rxdart/rxdart.dart';
import '../models/index.dart' show User;

class UsersBloc extends Bloc {
  UsersService _service;
  DB _db;

  // final _itemFetcher = PublishSubject<String>();
//   final _itemsFetcher = PublishSubject<String>();
//   final _itemsOutputs = BehaviorSubject<Map<String, Settings>>();
//   // # Getters to Streams
  get items => _service.fetchItems();
//   // # Getters to Sinks
//   Function(String) get fetchItemById => _itemFetcher.sink.add;
//   Function(String) get fetchItems => _fetchItems;

  @override
  void dispose() {
    // TODO: implement dispose
  }
  UsersBloc(this._service, this._db) {
    print("here blocs");
  }
  @override
  getItem(String id) {
    print("im priniting in users block ID: " + id);
  }
}
