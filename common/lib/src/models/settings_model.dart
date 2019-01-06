import '../abstracts/index.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:common/src/serializers/serializers.dart';

part 'settings_model.g.dart';

abstract class Settings extends Model
    implements Built<Settings, SettingsBuilder> {
  static Serializer<Settings> get serializer => _$settingsSerializer;

  @nullable
  String get id;
  @nullable
  String get dark;
  @nullable
  String get language;
  @nullable
  String get title;

  Settings._();
  factory Settings([updates(SettingsBuilder b)]) = _$Settings;
  /**
   *  parseing a firebase documnet
   * 
   */
  factory Settings.parseFairbase(dynamic doc) {
    Settings docWithoutDocumentID = standardSerializers
        .deserializeWith<Settings>(Settings.serializer, doc.data);
    //As the document ID is not in the Map, but an attribute of the Document I'll have to add it manually. Any way to fix this?
    var dockWithDocID =
        docWithoutDocumentID.rebuild((b) => b..id = doc.documentID);

    assert(dockWithDocID.id != null);

    return dockWithDocID;
  }
  /**
   * parsing from json
   * 
   */
  factory Settings.json(dynamic doc) {
    return standardSerializers.serializeWith(Settings.serializer, doc);
  }

  /**
   * parsing form db
   */
}
