import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'workers_for_job_response.g.dart';

abstract class WorkersForJobResponse
    implements Built<WorkersForJobResponse, WorkersForJobResponseBuilder> {
  WorkersForJobResponse._();

  factory WorkersForJobResponse(
          [Function(WorkersForJobResponseBuilder b) updates]) =
      _$WorkersForJobResponse;

  @BuiltValueField(wireName: 'workers')
  BuiltList<Worker> get workers;

  @BuiltValueField(wireName: 'time_registrations')
  BuiltList<TimeRegistration> get timeRegistrations;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WorkersForJobResponse.serializer, this));
  }

  static WorkersForJobResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WorkersForJobResponse.serializer,
      data,
    );
  }

  static Serializer<WorkersForJobResponse> get serializer =>
      _$workersForJobResponseSerializer;
}
