import '../abstracts/index.dart' show Model;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:common/src/serializers/serializers.dart';

part 'group_model.g.dart';

abstract class Group extends Model implements Built<Group, GroupBuilder> {
  static Serializer<Group> get serializer => _$groupSerializer;

  @nullable
  String get id;
  @nullable
  String get name;
  @nullable
  String get address;
  @nullable
  String get avatar;
  @nullable
  String get created_at;

  Group._();
  factory Group([updates(GroupBuilder b)]) = _$Group;
}

/*
 *  * Firebase parasing
 *  
 */

Group parseGroup(dynamic doc) {
  Group docWithoutDocumentID =
      standardSerializers.deserializeWith<Group>(Group.serializer, doc.data);
  //As the document ID is not in the Map, but an attribute of the Document I'll have to add it manually. Any way to fix this?
  var dockWithDocID =
      docWithoutDocumentID.rebuild((b) => b..id = doc.documentID);

  assert(dockWithDocID.id != null);

  return dockWithDocID;
}
