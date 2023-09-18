library job_application;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/address.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/enums/job_application_state.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/washer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'job_application.g.dart';

abstract class JobApplication
    implements Built<JobApplication, JobApplicationBuilder> {
  JobApplication._();

  factory JobApplication([Function(JobApplicationBuilder b) updates]) =
      _$JobApplication;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'washer')
  Washer get washer;

  @BuiltValueField(wireName: 'address')
  Address get address;

  @BuiltValueField(wireName: 'state')
  JobApplicationState get state;

  @BuiltValueField(wireName: 'distance')
  double get distance;

  @BuiltValueField(wireName: 'no_travel_costs')
  bool get noTravelCosts;

  String toJson() {
    return json.encode(
      serializers.serializeWith(JobApplication.serializer, this),
    );
  }

  static JobApplication? fromJson(String jsonString) {
    return serializers.deserializeWith(
      JobApplication.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<JobApplication> get serializer =>
      _$jobApplicationSerializer;
}
