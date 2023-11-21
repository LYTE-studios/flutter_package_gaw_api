library pass_token_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'pass_token_response.g.dart';

abstract class PassTokenResponse
    implements Built<PassTokenResponse, PassTokenResponseBuilder> {
  PassTokenResponse._();

  factory PassTokenResponse([Function(PassTokenResponseBuilder b) updates]) =
      _$PassTokenResponse;

  @BuiltValueField(wireName: 'token')
  String get token;

  String toJson() {
    return json.encode(
      serializers.serializeWith(PassTokenResponse.serializer, this),
    );
  }

  static PassTokenResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      PassTokenResponse.serializer,
      data,
    );
  }

  static Serializer<PassTokenResponse> get serializer =>
      _$passTokenResponseSerializer;
}