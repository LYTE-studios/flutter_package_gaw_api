import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

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

  @BuiltValueField(wireName: 'address')
  String? get address;

  @BuiltValueField(wireName: 'billing_address')
  String? get billingAddress;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateCustomerRequest.serializer, this));
  }

  static CreateCustomerRequest? fromJson(dynamic data) {
    return serializers.deserializeWith(
      CreateCustomerRequest.serializer,
      data,
    );
  }

  static Serializer<CreateCustomerRequest> get serializer =>
      _$createCustomerRequestSerializer;
}
