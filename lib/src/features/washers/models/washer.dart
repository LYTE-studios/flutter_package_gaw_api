library washer;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

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

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'profile_picture_url')
  String? get profilePictureUrl;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Washer.serializer, this),
    );
  }

  static Washer? fromJson(dynamic data) {
    return serializers.deserializeWith(
      Washer.serializer,
      data,
    );
  }

  static Serializer<Washer> get serializer => _$washerSerializer;
}
