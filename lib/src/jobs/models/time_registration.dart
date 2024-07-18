library time_registration;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'time_registration.g.dart';

abstract class TimeRegistration
    implements Built<TimeRegistration, TimeRegistrationBuilder> {
  TimeRegistration._();

  factory TimeRegistration([Function(TimeRegistrationBuilder b) updates]) =
      _$TimeRegistration;

  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'start_time')
  int? get startTime;

  @BuiltValueField(wireName: 'end_time')
  int? get endTime;

  @BuiltValueField(wireName: 'washer')
  Washer? get washer;

  @BuiltValueField(wireName: 'washer_signature')
  String? get washerSignatureUrl;

  @BuiltValueField(wireName: 'customer_signature')
  String? get customerSignatureUrl;

  @BuiltValueField(wireName: 'break_time')
  int? get breakTime;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TimeRegistration.serializer, this),
    );
  }

  static TimeRegistration? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      TimeRegistration.serializer,
      data,
    );
  }

  static Serializer<TimeRegistration> get serializer =>
      _$timeRegistrationSerializer;
}
