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

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'profile_picture_url')
  String? get profilePictureUrl;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Washer.serializer, this),
    );
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