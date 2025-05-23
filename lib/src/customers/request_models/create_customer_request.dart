import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'create_customer_request.g.dart';

abstract class CreateCustomerRequest
    implements Built<CreateCustomerRequest, CreateCustomerRequestBuilder> {
  CreateCustomerRequest._();

  factory CreateCustomerRequest(
          [Function(CreateCustomerRequestBuilder b) updates]) =
      _$CreateCustomerRequest;

  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'company')
  String? get company;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'billing_address')
  Address? get billingAddress;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  @BuiltValueField(wireName: 'tag_id')
  String? get tagId;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateCustomerRequest.serializer, this));
  }

  static CreateCustomerRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      CreateCustomerRequest.serializer,
      data,
    );
  }

  static Serializer<CreateCustomerRequest> get serializer =>
      _$createCustomerRequestSerializer;
}
