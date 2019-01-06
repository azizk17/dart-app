// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Message> _$messageSerializer = new _$MessageSerializer();

class _$MessageSerializer implements StructuredSerializer<Message> {
  @override
  final Iterable<Type> types = const [Message, _$Message];
  @override
  final String wireName = 'Message';

  @override
  Iterable serialize(Serializers serializers, Message object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.dark != null) {
      result
        ..add('dark')
        ..add(serializers.serialize(object.dark,
            specifiedType: const FullType(String)));
    }
    if (object.language != null) {
      result
        ..add('language')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Message deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dark':
          result.dark = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'language':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Message extends Message {
  @override
  final String id;
  @override
  final String dark;
  @override
  final String language;
  @override
  final String title;

  factory _$Message([void updates(MessageBuilder b)]) =>
      (new MessageBuilder()..update(updates)).build();

  _$Message._({this.id, this.dark, this.language, this.title}) : super._();

  @override
  Message rebuild(void updates(MessageBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MessageBuilder toBuilder() => new MessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Message &&
        id == other.id &&
        dark == other.dark &&
        language == other.language &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), dark.hashCode), language.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Message')
          ..add('id', id)
          ..add('dark', dark)
          ..add('language', language)
          ..add('title', title))
        .toString();
  }
}

class MessageBuilder implements Builder<Message, MessageBuilder> {
  _$Message _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _dark;
  String get dark => _$this._dark;
  set dark(String dark) => _$this._dark = dark;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  MessageBuilder();

  MessageBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _dark = _$v.dark;
      _language = _$v.language;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Message other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Message;
  }

  @override
  void update(void updates(MessageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Message build() {
    final _$result = _$v ??
        new _$Message._(id: id, dark: dark, language: language, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
