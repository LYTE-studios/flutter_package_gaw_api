library customer;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'customer.g.dart';

abstract class Customer implements Built<Customer, CustomerBuilder> {
  Customer._();

  factory Customer([Function(CustomerBuilder b) updates]) = _$Customer;

  @BuiltValueField(wireName: 'id')
  String? get id;

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

  String toJson() {
    return json.encode(
      serializers.serializeWith(Customer.serializer, this),
    );
  }

  String getFullName() {
    return '$firstName $lastName';
  }

  static Customer? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Customer.serializer,
      data,
    );
  }

  static Serializer<Customer> get serializer => _$customerSerializer;
}