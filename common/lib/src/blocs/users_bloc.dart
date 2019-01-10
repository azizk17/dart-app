import '../abstracts/index.dart' show DB, Bloc;
import '../services/abstracts/index.dart' show UsersService;
import '../repositories/index.dart' show UsersRepository;
import 'package:rxdart/rxdart.dart';
import '../models/index.dart' show User;
import '../validations/validations.dart' show UsersValidation;

class UsersBloc extends Bloc with UsersValidation {
  UsersRepository _repo;

  final _itemFetcher = PublishSubject<String>();
  // final _itemsFetcher = PublishSubject<String>();
//   final _itemsOutputs = BehaviorSubject<Map<String, Settings>>();
//   // # Getters to Streams
  Observable<Map<String, User>> get items => _repo.getItems();
//   // # Getters to Sinks
  Function(String) get getItemById => _repo.getItem;
//   Function(String) get fetchItems => _fetchItems;
/**
 *  ? User proprety
 * 
 */
  // Controller
  final _name = BehaviorSubject<String>();
  final _editUser = BehaviorSubject<User>();

  // Stream
  Stream<String> get name => _name.stream.transform(nameValidator);
  // Stream<User> get editUser => _editUser.stream.transform(userValidator);

  // Sink data to stream
  Function(User) get changeName => _repo.update;
  // sumbit form
  UsersBloc(this._repo) {}
  @override
  getItem(String id) {
    print("im priniting in users block ID: " + id);
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

  // submit
  _submit() {
    // return save
  }
  @override
  void dispose() {
    _name.close();
  }
}
