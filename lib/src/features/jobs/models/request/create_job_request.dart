library create_job_request.dart;

import 'dart:convert';
import 'dart:ffi';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'create_job_request.g.dart';

abstract class CreateJobRequest
    implements Built<CreateJobRequest, CreateJobRequestBuilder> {
  CreateJobRequest._();

  factory CreateJobRequest([Function(CreateJobRequestBuilder b) updates]) =
      _$CreateJobRequest;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'address')
  Address get address;

  @BuiltValueField(wireName: 'start_time')
  int get startTime;

  @BuiltValueField(wireName: 'end_time')
  int get endTime;

  @BuiltValueField(wireName: 'customer_id')
  String get customerId;

  @BuiltValueField(wireName: 'max_washers')
  int get maxWashers;

  @BuiltValueField(wireName: 'application_start_time')
  int? get applicationStartTime;

  @BuiltValueField(wireName: 'application_end_time')
  int? get applicationEndTime;

  @BuiltValueField(wireName: 'is_draft')
  Bool? get isDraft;

  String toJson() {
    return json.encode(
      serializers.serializeWith(CreateJobRequest.serializer, this),
    );
  }

  static CreateJobRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      CreateJobRequest.serializer,
      data,
    );
  }

  static Serializer<CreateJobRequest> get serializer =>
      _$createJobRequestSerializer;
}
