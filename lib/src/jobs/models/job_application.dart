library job_application;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'job_application.g.dart';

abstract class JobApplication
    implements Built<JobApplication, JobApplicationBuilder> {
  JobApplication._();

  factory JobApplication([Function(JobApplicationBuilder b) updates]) =
      _$JobApplication;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'worker')
  Worker get worker;

  @BuiltValueField(wireName: 'job')
  Job get job;

  @BuiltValueField(wireName: 'address')
  Address get address;

  @BuiltValueField(wireName: 'state')
  JobApplicationState get state;

  @BuiltValueField(wireName: 'distance')
  double? get distance;

  @BuiltValueField(wireName: 'no_travel_costs')
  bool get noTravelCosts;

  @BuiltValueField(wireName: 'created_at')
  int? get createdAt;

  @BuiltValueField(wireName: 'note')
  String? get note;

  @BuiltValueField(wireName: 'contract')
  String? get contract;

  String toJson() {
    return json.encode(
      serializers.serializeWith(JobApplication.serializer, this),
    );
  }

  static JobApplication? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      JobApplication.serializer,
      data,
    );
  }

  static Serializer<JobApplication> get serializer =>
      _$jobApplicationSerializer;
}
