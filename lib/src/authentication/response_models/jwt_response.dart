library jwt_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'jwt_response.g.dart';

abstract class JwtResponse implements Built<JwtResponse, JwtResponseBuilder> {
  JwtResponse._();

  factory JwtResponse([Function(JwtResponseBuilder b) updates]) = _$JwtResponse;

  @BuiltValueField(wireName: 'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: 'refresh_token')
  String? get refreshToken;

  String toJson() {
    return json.encode(serializers.serializeWith(JwtResponse.serializer, this));
  }

  static JwtResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(JwtResponse.serializer, data);
  }

  static Serializer<JwtResponse> get serializer => _$jwtResponseSerializer;
}
