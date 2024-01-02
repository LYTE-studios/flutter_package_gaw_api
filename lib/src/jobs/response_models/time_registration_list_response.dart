library time_registration_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'time_registration_list_response.g.dart';

abstract class TimeRegistrationListResponse
    implements
        Built<TimeRegistrationListResponse,
            TimeRegistrationListResponseBuilder> {
  TimeRegistrationListResponse._();

  factory TimeRegistrationListResponse(
          [Function(TimeRegistrationListResponseBuilder b) updates]) =
      _$TimeRegistrationListResponse;

  @BuiltValueField(wireName: 'times')
  BuiltList<TimeRegistration>? get timeRegistrations;

  String toJson() {
    return json.encode(
      serializers.serializeWith(TimeRegistrationListResponse.serializer, this),
    );
  }

  static TimeRegistrationListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      TimeRegistrationListResponse.serializer,
      data,
    );
  }

  static Serializer<TimeRegistrationListResponse> get serializer =>
      _$timeRegistrationListResponseSerializer;
}
