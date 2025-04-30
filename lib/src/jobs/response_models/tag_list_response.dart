library tag_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/jobs/models/tag.dart';

part 'tag_list_response.g.dart';

abstract class TagListResponse
    implements Built<TagListResponse, TagListResponseBuilder> {
  TagListResponse._();

  factory TagListResponse([Function(TagListResponseBuilder b) updates]) =
      _$TagListResponse;

  @BuiltValueField(wireName: 'tags')
  BuiltList<Tag>? get tags;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TagListResponse.serializer, this),
    );
  }

  static TagListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      TagListResponse.serializer,
      data,
    );
  }

  static Serializer<TagListResponse> get serializer =>
      _$tagListResponseSerializer;
}
