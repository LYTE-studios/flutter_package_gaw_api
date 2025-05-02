library tag;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'tag.g.dart';

abstract class Tag implements Built<Tag, TagBuilder> {
  Tag._();

  factory Tag([Function(TagBuilder b) updates]) = _$Tag;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'color')
  String get color;

  @BuiltValueField(wireName: 'icon')
  String get icon;

  @BuiltValueField(wireName: 'special_committee')
  String get specialCommittee;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Tag.serializer, this),
    );
  }

  static Tag? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Tag.serializer,
      data,
    );
  }

  static Serializer<Tag> get serializer => _$tagSerializer;
}
