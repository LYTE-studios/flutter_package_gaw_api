library job;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'job.g.dart';

abstract class Job implements Built<Job, JobBuilder> {
  Job._();

  factory Job([Function(JobBuilder b) updates]) = _$Job;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'title')
  String? get title;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'address')
  Address get address;

  @BuiltValueField(wireName: 'start_time')
  int get startTime;

  @BuiltValueField(wireName: 'end_time')
  int get endTime;

  @BuiltValueField(wireName: 'application_start_time')
  int? get applicationStartTime;

  @BuiltValueField(wireName: 'application_end_time')
  int? get applicationEndTime;

  @BuiltValueField(wireName: 'max_washers')
  int get maxWashers;

  @BuiltValueField(wireName: 'selected_washers')
  int get selectedWashers;

  @BuiltValueField(wireName: 'is_draft')
  bool? get isDraft;

  @BuiltValueField(wireName: 'state')
  JobState get state;

  @BuiltValueField(wireName: 'customer')
  Customer get customer;

  @BuiltValueField(wireName: 'time_registrations')
  BuiltList<TimeRegistration>? get registrations;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Job.serializer, this),
    );
  }

  static Job? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Job.serializer,
      data,
    );
  }

  static Serializer<Job> get serializer => _$jobSerializer;
}
