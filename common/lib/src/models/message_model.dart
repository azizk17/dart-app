import '../abstracts/index.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:common/src/serializers/serializers.dart';

part 'message_model.g.dart';

abstract class Message extends Model implements Built<Message, MessageBuilder> {
  static Serializer<Message> get serializer => _$messageSerializer;

  @nullable
  String get id;
  @nullable
  String get dark;
  @nullable
  String get language;
  @nullable
  String get title;

  Message._();
  factory Message([updates(MessageBuilder b)]) = _$Message;
  /**
   *  parseing a firebase documnet
   * 
   */
  factory Message.parse(dynamic doc) {
    Message docWithoutDocumentID = standardSerializers.deserializeWith<Message>(
        Message.serializer, doc.data);
    //As the document ID is not in the Map, but an attribute of the Document I'll have to add it manually. Any way to fix this?
    var dockWithDocID =
        docWithoutDocumentID.rebuild((b) => b..id = doc.documentID);

    assert(dockWithDocID.id != null);

    return dockWithDocID;
  }
  /**
   * parsing from json
   */

  /**
   * parsing form db
   */
}
