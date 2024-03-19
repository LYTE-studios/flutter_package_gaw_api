library time_registration_request;

import 'dart:convert';
import 'dart:typed_data';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'time_registration_request.g.dart';

abstract class TimeRegistrationRequest
    implements Built<TimeRegistrationRequest, TimeRegistrationRequestBuilder> {
  TimeRegistrationRequest._();

  factory TimeRegistrationRequest(
          [Function(TimeRegistrationRequestBuilder b) updates]) =
      _$TimeRegistrationRequest;

  @BuiltValueField(wireName: 'job_id')
  String get jobId;

  @BuiltValueField(wireName: 'start_time')
  int get startTime;

  @BuiltValueField(wireName: 'end_time')
  int get endTime;

  @BuiltValueField(wireName: 'customer_signature')
  Uint8List? get customerSignature;

  @BuiltValueField(wireName: 'washer_signature')
  Uint8List? get washerSignature;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TimeRegistrationRequest.serializer, this),
    );
  }

  static TimeRegistrationRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      TimeRegistrationRequest.serializer,
      data,
    );
  }

  static Serializer<TimeRegistrationRequest> get serializer =>
      _$timeRegistrationRequestSerializer;
}
