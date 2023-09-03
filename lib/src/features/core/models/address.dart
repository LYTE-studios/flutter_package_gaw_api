library address;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'address.g.dart';

abstract class Address implements Built<Address, AddressBuilder> {
  Address._();

  factory Address([Function(AddressBuilder b) updates]) = _$Address;

  @BuiltValueField(wireName: 'street_name')
  String? get streetName;

  @BuiltValueField(wireName: 'house_number')
  String? get houseNumber;

  @BuiltValueField(wireName: 'box_number')
  String? get boxNumber;

  @BuiltValueField(wireName: 'postal_code')
  String? get postalCode;

  @BuiltValueField(wireName: 'city')
  String? get city;

  @BuiltValueField(wireName: 'state')
  String? get state;

  @BuiltValueField(wireName: 'country')
  String? get country;

  @BuiltValueField(wireName: 'latitude')
  double? get latitude;

  @BuiltValueField(wireName: 'longitude')
  double? get longitude;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Address.serializer, this),
    );
  }

  static Address? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Address.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
