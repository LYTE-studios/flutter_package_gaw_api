import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'update_customer_request.g.dart';

abstract class UpdateCustomerRequest
    implements Built<UpdateCustomerRequest, UpdateCustomerRequestBuilder> {
  UpdateCustomerRequest._();

  factory UpdateCustomerRequest(
          [Function(UpdateCustomerRequestBuilder b) updates]) =
      _$UpdateCustomerRequest;

  @BuiltValueField(wireName: 'email')
  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'initials')
  String? get initials;

  @BuiltValueField(wireName: 'company')
  String? get company;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'billing_address')
  Address? get billingAddress;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  String toJson() {
    return json.encode(
        serializers.serializeWith(UpdateCustomerRequest.serializer, this));
  }

  static UpdateCustomerRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      UpdateCustomerRequest.serializer,
      data,
    );
  }

  static Serializer<UpdateCustomerRequest> get serializer =>
      _$updateCustomerRequestSerializer;
}
