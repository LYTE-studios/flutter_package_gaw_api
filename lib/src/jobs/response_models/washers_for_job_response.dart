import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'washers_for_job_response.g.dart';

abstract class WashersForJobResponse
    implements Built<WashersForJobResponse, WashersForJobResponseBuilder> {
  WashersForJobResponse._();

  factory WashersForJobResponse(
          [Function(WashersForJobResponseBuilder b) updates]) =
      _$WashersForJobResponse;

  @BuiltValueField(wireName: 'washers')
  BuiltList<Washer> get washers;

  @BuiltValueField(wireName: 'time_registrations')
  BuiltList<TimeRegistration> get timeRegistrations;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WashersForJobResponse.serializer, this));
  }

  static WashersForJobResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WashersForJobResponse.serializer,
      data,
    );
  }

  static Serializer<WashersForJobResponse> get serializer =>
      _$washersForJobResponseSerializer;
}
