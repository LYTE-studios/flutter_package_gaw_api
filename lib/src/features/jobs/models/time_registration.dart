library time_registration;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'time_registration.g.dart';

abstract class TimeRegistration implements Built<TimeRegistration, TimeRegistrationBuilder> {
  TimeRegistration._();

  factory TimeRegistration([Function(TimeRegistrationBuilder b) updates]) = _$TimeRegistration;

  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'start_time')
  String get startTime;

  @BuiltValueField(wireName: 'end_time')
  String get endTime;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TimeRegistration.serializer, this),
    );
  }

  static TimeRegistration? fromJson(String jsonString) {
    return serializers.deserializeWith(
      TimeRegistration.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<TimeRegistration> get serializer => _$timeRegistrationSerializer;
}