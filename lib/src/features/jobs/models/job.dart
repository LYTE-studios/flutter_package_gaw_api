library job;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/address.dart';
import 'package:flutter_package_gaw_api/src/features/customers/models/customer.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/enums/job_state.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/job_application.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'job.g.dart';

abstract class Job implements Built<Job, JobBuilder> {
  Job._();

  factory Job([Function(JobBuilder b) updates]) = _$Job;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'customer')
  Customer get customer;

  @BuiltValueField(wireName: 'address')
  Address get address;

  @BuiltValueField(wireName: 'state')
  JobState get state;

  @BuiltValueField(wireName: 'application')
  JobApplication? get application;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Job.serializer, this),
    );
  }

  static Job? fromJson(String jsonString) {
    return serializers.deserializeWith(
      Job.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<Job> get serializer => _$jobSerializer;
}
