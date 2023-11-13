library time_registration_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'time_registration_response.g.dart';

abstract class TimeRegistrationResponse 
  implements Built<TimeRegistrationResponse, TimeRegistrationResponseBuilder> {

  TimeRegistrationResponse._();

  factory TimeRegistrationResponse(
    [Function(TimeRegistrationResponseBuilder b) updates]) = _$TimeRegistrationResponse;

  @BuiltValueField(wireName: 'job_id')
  String get jobId;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TimeRegistrationResponse.serializer, this),
    );
  }

  static TimeRegistrationResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      TimeRegistrationResponse.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<TimeRegistrationResponse> get serializer 
    => _$timeRegistrationResponseSerializer;
}