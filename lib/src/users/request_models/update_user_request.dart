library update_user_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'update_user_request.g.dart';

abstract class UpdateUserRequest
    implements Built<UpdateUserRequest, UpdateUserRequestBuilder> {
  UpdateUserRequest._();

  factory UpdateUserRequest([Function(UpdateUserRequestBuilder b) updates]) =
      _$UpdateUserRequest;

  @BuiltValueField(wireName: 'user_id')
  String get userId;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'initials')
  String? get initials;

  @BuiltValueField(wireName: 'date_of_birth')
  int? get dateOfBirth;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'billing_address')
  Address? get billingAddress;

  String toJson() {
    return json.encode(
      serializers.serializeWith(UpdateUserRequest.serializer, this),
    );
  }

  static UpdateUserRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      UpdateUserRequest.serializer,
      data,
    );
  }

  static Serializer<UpdateUserRequest> get serializer =>
      _$updateUserRequestSerializer;
}
