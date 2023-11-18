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

  @BuiltValueField(wireName: 'jobs')
  BuiltList<Job>? get jobs;

  String toJson() {
    return json.encode(
      serializers.serializeWith(JobListResponse.serializer, this),
    );
  }

  static JobListResponse? fromJson(dynamic data) {
    return serializers.deserializeWith(
      JobListResponse.serializer,
      data,
    );
  }

  static Serializer<JobListResponse> get serializer =>
      _$jobListResponseSerializer;
}
