library job_list_response;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'job_list_response.g.dart';

abstract class JobListResponse
    implements Built<JobListResponse, JobListResponseBuilder> {
  JobListResponse._();

  factory JobListResponse([Function(JobListResponseBuilder b) updates]) =
      _$JobListResponse;

  @BuiltValueField(wireName: 'upcoming_jobs')
  BuiltList<Job> get upcomingJobs;

  @BuiltValueField(wireName: 'my_jobs')
  BuiltList<Job> get myJobs;

  String toJson() {
    return json.encode(
      serializers.serializeWith(JobListResponse.serializer, this),
    );
  }

  static JobListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      JobListResponse.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<JobListResponse> get serializer =>
      _$jobListResponseSerializer;
}
