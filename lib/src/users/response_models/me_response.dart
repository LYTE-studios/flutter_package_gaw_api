library me_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'me_response.g.dart';

abstract class MeResponse implements Built<MeResponse, MeResponseBuilder> {
  MeResponse._();

  factory MeResponse([Function(MeResponseBuilder b) updates]) = _$MeResponse;

  @BuiltValueField(wireName: 'user_id')
  String get userId;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'email')
  String? get email;

  @BuiltValueField(wireName: 'date_of_birth')
  int? get dateOfBirth;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  @BuiltValueField(wireName: 'language')
  String? get language;

  String toJson() {
    return json.encode(
      serializers.serializeWith(MeResponse.serializer, this),
    );
  }

  static MeResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      MeResponse.serializer,
      data,
    );
  }

  static Serializer<MeResponse> get serializer => _$meResponseSerializer;
}
