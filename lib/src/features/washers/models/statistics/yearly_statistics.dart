import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

import 'monthly_statistics.dart';

part 'yearly_statistics.g.dart';

abstract class YearlyStatistics
    implements Built<YearlyStatistics, YearlyStatisticsBuilder> {
  YearlyStatistics._();

  factory YearlyStatistics([void Function(YearlyStatisticsBuilder) updates]) =
      _$YearlyStatistics;

  @BuiltValueField(wireName: 'year')
  int get year;

  @BuiltValueField(wireName: 'monthly_stats')
  BuiltMap<String, MonthlyStatistics> get monthlyStats;

  @BuiltValueField(wireName: 'completed_jobs_count')
  int get completedJobsCount;

  @BuiltValueField(wireName: 'upcoming_jobs_count')
  int get upcomingJobsCount;

  String toJson() {
    return json.encode(
      serializers.serializeWith(YearlyStatistics.serializer, this),
    );
  }

  static YearlyStatistics? fromJson(dynamic data) {
    return serializers.deserializeWith(
      YearlyStatistics.serializer,
      data,
    );
  }

  static Serializer<YearlyStatistics> get serializer =>
      _$yearlyStatisticsSerializer;
}
