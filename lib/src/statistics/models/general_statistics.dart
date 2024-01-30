import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'general_statistics.g.dart';

abstract class GeneralStatistics
    implements Built<GeneralStatistics, GeneralStatisticsBuilder> {
  GeneralStatistics._();

  factory GeneralStatistics([void Function(GeneralStatisticsBuilder) updates]) =
      _$GeneralStatistics;

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
  BuiltMap<int, int> get dailyHours;

  List<FlSpot> toBarSpots() {
    List<FlSpot> spots = [];

    for (int date in dailyHours.toMap().keys) {
      spots.add(
        FlSpot(
          date.toDouble(),
          dailyHours.toMap()[date]!.toDouble(),
        ),
      );
    }

    return spots;
  }

  List<FlSpot> toSpots() {
    List<FlSpot> spots = [];

    for (int date in dailyHours.toMap().keys) {
      spots.add(
        FlSpot(
          date.toDouble(),
          dailyHours.toMap()[date]!.toDouble(),
        ),
      );
    }

    return spots;
  }

  String toJson() {
    return json.encode(
      serializers.serializeWith(GeneralStatistics.serializer, this),
    );
  }

  static GeneralStatistics? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      GeneralStatistics.serializer,
      data,
    );
  }

  static Serializer<GeneralStatistics> get serializer =>
      _$generalStatisticsSerializer;
}
