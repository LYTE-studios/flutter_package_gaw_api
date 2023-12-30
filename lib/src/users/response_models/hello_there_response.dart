library hello_there_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'hello_there_response.g.dart';

abstract class HelloThereResponse
    implements Built<HelloThereResponse, HelloThereResponseBuilder> {
  HelloThereResponse._();

  factory HelloThereResponse([Function(HelloThereResponseBuilder b) updates]) =
      _$HelloThereResponse;

  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  String toJson() {
    return json.encode(
      serializers.serializeWith(HelloThereResponse.serializer, this),
    );
  }

  static HelloThereResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      HelloThereResponse.serializer,
      data,
    );
  }

  static Serializer<HelloThereResponse> get serializer =>
      _$helloThereResponseSerializer;
}
