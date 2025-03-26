import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'time_registration_response.g.dart';

abstract class TimeRegistrationResponse
    implements
        Built<TimeRegistrationResponse, TimeRegistrationResponseBuilder> {
  TimeRegistrationResponse._();

  factory TimeRegistrationResponse(
          [Function(TimeRegistrationResponseBuilder b) updates]) =
      _$TimeRegistrationResponse;

  @BuiltValueField(wireName: 'time_registration')
  TimeRegistration? get timeRegistration;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TimeRegistrationResponse.serializer, this));
  }

  static TimeRegistrationResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      TimeRegistrationResponse.serializer,
      data,
    );
  }

  static Serializer<TimeRegistrationResponse> get serializer =>
      _$timeRegistrationResponseSerializer;
}
