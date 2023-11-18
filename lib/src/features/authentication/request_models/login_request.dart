library login_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'login_request.g.dart';

abstract class LoginRequest
    implements Built<LoginRequest, LoginRequestBuilder> {
  LoginRequest._();

  factory LoginRequest([Function(LoginRequestBuilder b) updates]) =
      _$LoginRequest;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'password')
  String get password;

  String toJson() {
    return json.encode(
      serializers.serializeWith(LoginRequest.serializer, this),
    );
  }

  static LoginRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      LoginRequest.serializer,
      data,
    );
  }

  static Serializer<LoginRequest> get serializer => _$loginRequestSerializer;
}
