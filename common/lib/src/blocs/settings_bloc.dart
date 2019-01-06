// import 'package:rxdart/rxdart.dart';
// import '../abstracts/index.dart' show Bloc, DB;
// import '../services/index.dart' show SettingsService;
// import '../models/index.dart' show Settings;

// class SettingsBloc extends Bloc {
//   SettingsService _sService;
//   DB _db;
//   //Streams controllers
//   final _itemFetcher = PublishSubject<String>();
//   final _itemsFetcher = PublishSubject<String>();
//   final _itemsOutputs = BehaviorSubject<Map<String, Settings>>();
//   // # Getters to Streams
//   Observable<Map<String, Settings>> get items => _sService.fetchItems();
//   // # Getters to Sinks
//   Function(String) get fetchItemById => _itemFetcher.sink.add;
//   Function(String) get fetchItems => _fetchItems;

//   Observable get fire => this._sService.fetchItems();

//   SettingsBloc(this._sService, this._db) {
//     _itemsFetcher.transform(_itemsOutputsTransformer()).pipe(_itemsOutputs);
//     // // _itemsOutputs.transform(_itemsOutputsTransformer());
//   }

//   _fetchItems(String id) {
//     var _items = this._sService.fetchItems();
//     // _items.listen((doc) => _itemsFetcher.sink.add(doc));
//     print(_items.toString());
//     // _itemsFetcher.sink.add(_items);
//     // _itemsOutputs.pipe(_items);
//     // return this._sService.fetchItems();

//     // print("let see what going on");
//     // Map<String, Settings> cache = {};
//     // return _items.listen((d) => d.documentChanges.forEach((doc) {
//     //       var b = Settings.parseFairbase(doc.document);
//     //       cache[b.id] = b;
//     //     }));
//     // _itemFetcher.concatWith(other)
//     // items.pipe(_items);
//   }

//   item(String id) => _sService.fetchItem(id);

//   _itemsOutputsTransformer() {
//     return ScanStreamTransformer(
//       (Map<String, Settings> cache, String id, index) {
//         print("HEre: " + index.toString() + " and ID: " + id);
//         // cache = _fetchItems();
//         return cache;
//       },
//       <String, Settings>{},
//     );
//     // List<Settings> _itemsList = List();

//     // if (_itemsList.contains(b.id)) {
//     //   print("shoud be update");
//     //   var i = _itemsList.indexOf(b);
//     //   _itemsList.insert(i, b);
//     // } else {
//     //   _itemsList.add(b);
//   }

//   @override
//   void dispose() {
//     _itemsOutputs.close();
//   }
// }
