import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

import 'daily_statistics.dart';

part 'weekly_statistics.g.dart';

abstract class WeeklyStatistics implements Built<WeeklyStatistics, WeeklyStatisticsBuilder> {
  WeeklyStatistics._();

  factory WeeklyStatistics([void Function(WeeklyStatisticsBuilder) updates]) = _$WeeklyStatistics;

  @BuiltValueField(wireName: 'week_start')
  String get weekStart;

  @BuiltValueField(wireName: 'week_end')
  String get weekEnd;

  @BuiltValueField(wireName: 'total_worked_hours')
  double get totalWorkedHours;

  @BuiltValueField(wireName: 'total_upcoming_hours')
  double get totalUpcomingHours;

  @BuiltValueField(wireName: 'average_hours')
  double get averageHours;

  @BuiltValueField(wireName: 'completed_jobs_count')
  int get completedJobsCount;

  @BuiltValueField(wireName: 'upcoming_jobs_count')
  int get upcomingJobsCount;

  @BuiltValueField(wireName: 'daily_hours')
  DailyStatistics get dailyHours;

  String toJson() {
    return json.encode(
      serializers.serializeWith(WeeklyStatistics.serializer, this),
    );
  }

  static WeeklyStatistics? fromJson(String jsonString) {
    return serializers.deserializeWith(
      WeeklyStatistics.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<WeeklyStatistics> get serializer => _$weeklyStatisticsSerializer;
}