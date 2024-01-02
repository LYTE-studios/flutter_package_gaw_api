library register_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'register_request.g.dart';

abstract class RegisterRequest
    implements Built<RegisterRequest, RegisterRequestBuilder> {
  RegisterRequest._();

  factory RegisterRequest([Function(RegisterRequestBuilder b) updates]) =
      _$RegisterRequest;

  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'password')
  String get password;

  String toJson() {
    return json.encode(
      serializers.serializeWith(RegisterRequest.serializer, this),
    );
  }

  static RegisterRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      RegisterRequest.serializer,
      data,
    );
  }

  static Serializer<RegisterRequest> get serializer =>
      _$registerRequestSerializer;
}
