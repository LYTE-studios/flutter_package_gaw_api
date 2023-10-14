library token_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'token_response.g.dart';

abstract class TokenResponse
    implements Built<TokenResponse, TokenResponseBuilder> {
  TokenResponse._();

  factory TokenResponse([Function(TokenResponseBuilder b) updates]) =
      _$TokenResponse;

  @BuiltValueField(wireName: 'token')
  String get token;

  @BuiltValueField(wireName: 'user_id')
  String get userId;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TokenResponse.serializer, this),
    );
  }

  static TokenResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(
      TokenResponse.serializer,
      json,
    );
  }

  static Serializer<TokenResponse> get serializer => _$tokenResponseSerializer;
}
