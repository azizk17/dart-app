import '../abstracts/abstracts.dart' show DB, Bloc;
import '../repositories/repositories.dart' show UsersRepository;
import 'package:rxdart/rxdart.dart';
import '../models/models.dart' show User;
import '../validations/validations.dart' show UsersValidation;

class UsersBloc extends Bloc with UsersValidation {
  UsersRepository _repo;
  // * Controllers
  final _itemFetcher = PublishSubject<String>();
  final _itemsFetcher = PublishSubject<String>();
  final _itemsOutputs = BehaviorSubject<Map<String, User>>();
  final _itemOutput = BehaviorSubject<User>();
  final _updateItem = BehaviorSubject<User>();

//  * Getters to Streams
  Observable<Map<String, User>> get items => _itemsOutputs;
  Observable<User> get item => _itemOutput.stream;
  Observable<User> get updatedItem => _updateItem.stream;
  // single input validation
  // Observable<String> get name => _name.stream.transform(nameValidator);
// * Getters to Sinks
  Function(String) get getItemById => _getItemById;
  Function(String) get fetchItems => _getItems;
  Function(User) get create => _create;
  Function(User) get update => _update;
  Function(String) get remove => _delete;

  UsersBloc(this._repo);
  // should output a stream type User, which StreamBuilder widget listen to.
  _getItemById(String id) {
    var item = _repo.getItem(id);
    item.listen((doc) => _itemOutput.sink.add(User.parseFirebase(doc)));
  }

  // should output a stream type Map<string, User> , which StreamBuilder widget listen to.
  _getItems(String offset) {
    var items = _repo.getItems();
    // List<User> recived =
    //     items.listen((change) => change.documentChanges.forEach((doc) {
    //           // return User.parseFirebase(doc.document);
    //           return User.parseFirebase(doc.document);
    //         }).toList());
  }

  // TODO:
  _create(User data) {
    var created = _repo.create(data);
  }
  // TODO:

  _update(User data) {
    var updated = _repo.update(data);
  }

  // TODO:
  _delete(String id) {
    var deleted = _repo.delete(id);
  }

  _itemOutputsTransformer() {
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
  void dispose() {
    _itemFetcher.close();
    _itemsFetcher.close();
    _itemsOutputs.close();
    _itemOutput.close();
    _updateItem.close();
  }
}
