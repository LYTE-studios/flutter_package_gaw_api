import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'customer_list_response.g.dart';

abstract class CustomerListResponse
    implements Built<CustomerListResponse, CustomerListResponseBuilder> {
  CustomerListResponse._();

  factory CustomerListResponse(
          [Function(CustomerListResponseBuilder b) updates]) =
      _$CustomerListResponse;

  @BuiltValueField(wireName: 'customers')
  BuiltList<Customer> get customers;

  @BuiltValueField(wireName: 'items_per_page')
  int get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int get total;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CustomerListResponse.serializer, this));
  }

  static CustomerListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      CustomerListResponse.serializer,
      data,
    );
  }

  static Serializer<CustomerListResponse> get serializer =>
      _$customerListResponseSerializer;
}
