library apply_for_job_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'apply_for_job_request.g.dart';

abstract class ApplyForJobRequest
    implements Built<ApplyForJobRequest, ApplyForJobRequestBuilder> {
  ApplyForJobRequest._();

  factory ApplyForJobRequest([Function(ApplyForJobRequestBuilder b) updates]) =
      _$ApplyForJobRequest;

  @BuiltValueField(serialize: false)
  Job get job;

  @BuiltValueField(wireName: 'job_id')
  String get jobId;

  @BuiltValueField(wireName: 'address')
  Address get address;

  @BuiltValueField(wireName: 'no_travel_costs')
  bool get noTravelCosts;

  @BuiltValueField(wireName: 'note')
  String? get note;

  @BuiltValueField(wireName: 'distance')
  double? get distance;

  String toJson() {
    return json.encode(
      serializers.serializeWith(ApplyForJobRequest.serializer, this),
    );
  }

  static ApplyForJobRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      ApplyForJobRequest.serializer,
      data,
    );
  }

  static Serializer<ApplyForJobRequest> get serializer =>
      _$applyForJobRequestSerializer;
}
