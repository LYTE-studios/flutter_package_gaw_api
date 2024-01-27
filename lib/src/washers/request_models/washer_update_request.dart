import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'washer_update_request.g.dart';

abstract class WasherUpdateRequest
    implements Built<WasherUpdateRequest, WasherUpdateRequestBuilder> {
  WasherUpdateRequest._();

  factory WasherUpdateRequest(
      [Function(WasherUpdateRequestBuilder b) updates]) = _$WasherUpdateRequest;

  @BuiltValueField(wireName: 'email')
  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WasherUpdateRequest.serializer, this));
  }

  static WasherUpdateRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WasherUpdateRequest.serializer,
      data,
    );
  }

  static Serializer<WasherUpdateRequest> get serializer =>
      _$washerUpdateRequestSerializer;
}
