library code_verification_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'code_verification_request.g.dart';

abstract class CodeVerificationRequest
    implements Built<CodeVerificationRequest, CodeVerificationRequestBuilder> {
  CodeVerificationRequest._();

  factory CodeVerificationRequest(
          [Function(CodeVerificationRequestBuilder b) updates]) =
      _$CodeVerificationRequest;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'code')
  String get code;

  String toJson() {
    return json.encode(
      serializers.serializeWith(CodeVerificationRequest.serializer, this),
    );
  }

  static CodeVerificationRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      CodeVerificationRequest.serializer,
      data,
    );
  }

  static Serializer<CodeVerificationRequest> get serializer =>
      _$codeVerificationRequestSerializer;
}
