library job_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'job_list_response.g.dart';

abstract class JobListResponse
    implements Built<JobListResponse, JobListResponseBuilder> {
  JobListResponse._();

  factory JobListResponse([Function(JobListResponseBuilder b) updates]) =
      _$JobListResponse;

  @BuiltValueField(wireName: 'jobs')
  BuiltList<Job>? get jobs;

  @BuiltValueField(wireName: 'items_per_page')
  int? get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int? get total;

  String toJson() {
    return json.encode(
      serializers.serializeWith(JobListResponse.serializer, this),
    );
  }

  static JobListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      JobListResponse.serializer,
      data,
    );
  }

  static Serializer<JobListResponse> get serializer =>
      _$jobListResponseSerializer;
}
