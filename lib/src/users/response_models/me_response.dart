library me_response;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'me_response.g.dart';

abstract class MeResponse 
    implements Built<MeResponse, MeResponseBuilder> {
  MeResponse._();

  factory MeResponse([Function(MeResponseBuilder b) updates]) =
      _$MeResponse;

  @BuiltValueField(wireName: 'user_id')
  String get userId;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'email')
  String? get email;

  @BuiltValueField(wireName: 'date_of_birth')
  DateTime? get dateOfBirth;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'billing_address')
  Address? get billingAddress;
  
  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String toJson() {
    var serialized = serializers.serializeWith(Job.serializer, this) as Map<String, dynamic>;
    if (serialized['date_of_birth'] != null) {
        serialized['date_of_birth'] = (serialized['date_of_birth'] as DateTime).toIso8601String();
    }
    return json.encode(serialized);
  }

  static MeResponse? fromJson(String jsonString) {
        var decodedJson = json.decode(jsonString);
    decodedJson['date_of_birth'] = DateTime.parse(decodedJson['date_of_birth']);
    return serializers.deserializeWith(
      MeResponse.serializer,
      decodedJson,
    );
  }

  static Serializer<MeResponse> get serializer =>
      _$meResponseSerializer;
}