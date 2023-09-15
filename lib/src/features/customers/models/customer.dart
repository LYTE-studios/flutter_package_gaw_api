library customer;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'customer.g.dart';

abstract class Customer implements Built<Customer, CustomerBuilder> {
  Customer._();

  factory Customer([Function(CustomerBuilder b) updates]) = _$Customer;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @BuiltValueField(wireName: 'initials')
  String get initials;

  @BuiltValueField(wireName: 'company')
  String? get company;

  @BuiltValueField(wireName: 'profile_picture_url')
  String? get profilePictureUrl;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Customer.serializer, this),
    );
  }

  String getFullName() {
    return '$firstName $lastName';
  }

  static Customer? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Customer.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<Customer> get serializer => _$customerSerializer;
}
