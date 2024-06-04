library washer;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'washer.g.dart';

abstract class Washer implements Built<Washer, WasherBuilder> {
  Washer._();

  factory Washer([Function(WasherBuilder b) updates]) = _$Washer;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'first_name')
  String get firstName;

  @BuiltValueField(wireName: 'last_name')
  String get lastName;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  @BuiltValueField(wireName: 'initials')
  String? get initials;

  @BuiltValueField(wireName: 'company')
  String? get company;

  @BuiltValueField(wireName: 'billing_address')
  Address? get billingAddress;

  @BuiltValueField(wireName: 'created_at')
  int? get createdAt;

  @BuiltValueField(wireName: 'date_of_birth')
  int? get dateOfBirth;

  @BuiltValueField(wireName: 'hours')
  double? get hours;

  @BuiltValueField(wireName: 'place_of_birth')
  String? get placeOfBirth;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Washer.serializer, this),
    );
  }

  String formatHours() {
    if (hours == null) {
      return '';
    }

    if (hours! < 0.01) {
      return '';
    }

    return hours!.toStringAsFixed(hours! < 0.5 ? 2 : (hours! < 5 ? 1 : 0));
  }

  String getFullName() {
    return '$firstName $lastName';
  }

  static Washer? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Washer.serializer,
      data,
    );
  }

  static Serializer<Washer> get serializer => _$washerSerializer;
}
