library update_language_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'update_language_request.g.dart';

abstract class UpdateLanguageRequest
    implements Built<UpdateLanguageRequest, UpdateLanguageRequestBuilder> {
  UpdateLanguageRequest._();

  factory UpdateLanguageRequest(
          [Function(UpdateLanguageRequestBuilder b) updates]) =
      _$UpdateLanguageRequest;

  @BuiltValueField(wireName: 'language')
  String get language;

  String toJson() {
    return json.encode(
      serializers.serializeWith(UpdateLanguageRequest.serializer, this),
    );
  }

  static UpdateLanguageRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      UpdateLanguageRequest.serializer,
      data,
    );
  }

  static Serializer<UpdateLanguageRequest> get serializer =>
      _$updateLanguageRequestSerializer;
}
