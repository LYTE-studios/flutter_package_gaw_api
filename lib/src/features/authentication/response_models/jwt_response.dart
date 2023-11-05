library jwt_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'jwt_response.g.dart';

abstract class JwtResponse implements Built<JwtResponse, JwtResponseBuilder> {
  JwtResponse._();

  factory JwtResponse([Function(JwtResponseBuilder b) updates]) = _$JwtResponse;

  @BuiltValueField(wireName: 'access')
  String? get accessToken;

  @BuiltValueField(wireName: 'refresh')
  String? get refreshToken;

  String toJson() {
    return json.encode(serializers.serializeWith(JwtResponse.serializer, this));
  }

  static JwtResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(JwtResponse.serializer, json);
  }

  static Serializer<JwtResponse> get serializer => _$jwtResponseSerializer;
}