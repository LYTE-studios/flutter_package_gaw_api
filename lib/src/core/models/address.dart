library address;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

  @BuiltValueField(wireName: 'zip_code')
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

  String formattedLatLong() {
    return 'Latitude: ${latitude ?? ''} Longitude: ${longitude ?? ''}'.trim();
  }

  String shortAddress() {
    return '${postalCode ?? ''} ${city ?? ''}'.trim();
  }

  String formattedStreetAddress() {
    return '${streetName ?? ''} ${houseNumber ?? ''} ${boxNumber ?? ''}'.trim();
  }

  String formattedAddres() {
    return '${streetName ?? ''} ${houseNumber ?? ''} ${boxNumber ?? ''} ${postalCode ?? ''} ${city ?? ''} ${country ?? ''}'
        .trim();
  }

  LatLng toLatLng() {
    return LatLng(latitude!, longitude!);
  }

  String toJson() {
    return json.encode(
      serializers.serializeWith(Address.serializer, this),
    );
  }

  static Address getDefault() {
    return Address(
      (b) => b
        ..latitude = 50.8476
        ..longitude = 4.3572,
    );
  }

  static Address? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Address.serializer,
      data,
    );
  }

  static Serializer<Address> get serializer => _$addressSerializer;
}
