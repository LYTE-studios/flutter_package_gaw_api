import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'create_customer_response.g.dart';

abstract class CreateCustomerResponse
    implements Built<CreateCustomerResponse, CreateCustomerResponseBuilder> {
  CreateCustomerResponse._();

  factory CreateCustomerResponse(
          [Function(CreateCustomerResponseBuilder b) updates]) =
      _$CreateCustomerResponse;

  @BuiltValueField(wireName: 'customer_id')
  String get customerId;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CreateCustomerResponse.serializer, this));
  }

  static CreateCustomerResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      CreateCustomerResponse.serializer,
      data,
    );
  }

  static Serializer<CreateCustomerResponse> get serializer =>
      _$createCustomerResponseSerializer;
}
