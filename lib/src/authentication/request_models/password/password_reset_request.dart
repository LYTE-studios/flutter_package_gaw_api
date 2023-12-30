library password_reset_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'password_reset_request.g.dart';

abstract class PasswordResetRequest
    implements Built<PasswordResetRequest, PasswordResetRequestBuilder> {
  PasswordResetRequest._();

  factory PasswordResetRequest(
          [Function(PasswordResetRequestBuilder b) updates]) =
      _$PasswordResetRequest;

  @BuiltValueField(wireName: 'token')
  String get token;

  @BuiltValueField(wireName: 'code')
  String get code;

  @BuiltValueField(wireName: 'password')
  String get password;

  String toJson() {
    return json.encode(
      serializers.serializeWith(PasswordResetRequest.serializer, this),
    );
  }

  static PasswordResetRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      PasswordResetRequest.serializer,
      data,
    );
  }

  static Serializer<PasswordResetRequest> get serializer =>
      _$passwordResetRequestSerializer;
}
