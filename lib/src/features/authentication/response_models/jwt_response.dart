library jwt_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'jwt_response.g.dart';

abstract class JwtResponse implements Built<JwtResponse, JwtResponseBuilder> {
  JwtResponse._();

  factory JwtResponse([Function(JwtResponseBuilder b) updates]) = _$JwtResponse;

  @BuiltValueField(wireName: 'access_token')
  String get accessToken;

  @BuiltValueField(wireName: 'refresh_token')
  String get refreshToken;

  bool get isRefreshTokenExpired {
    final parts = refreshToken.split('.');
    if (parts.length != 3) {
      return true; // Not a valid token format
    }

    final payload = json.decode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
    final expiry = DateTime.fromMillisecondsSinceEpoch(0).add(Duration(seconds: int.tryParse(payload['exp'].toString()) ?? 0));

    return expiry.isBefore(DateTime.now());
  }

  String toJson() {
    return json.encode(serializers.serializeWith(JwtResponse.serializer, this));
  }

  static JwtResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(JwtResponse.serializer, json);
  }

  static Serializer<JwtResponse> get serializer => _$jwtResponseSerializer;
}