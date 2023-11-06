library hello_there_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

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

  String toJson() {
    return json.encode(
      serializers.serializeWith(HelloThereResponse.serializer, this),
    );
  }

  static HelloThereResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      HelloThereResponse.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<HelloThereResponse> get serializer =>
      _$helloThereResponseSerializer;
}
