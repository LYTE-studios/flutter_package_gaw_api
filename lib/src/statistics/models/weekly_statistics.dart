import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'weekly_statistics.g.dart';

abstract class WeeklyStatistics
    implements Built<WeeklyStatistics, WeeklyStatisticsBuilder> {
  WeeklyStatistics._();

  factory WeeklyStatistics([void Function(WeeklyStatisticsBuilder) updates]) =
      _$WeeklyStatistics;

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

  /// Plots to FlSpot list
  List<FlSpot> toChartPlot() {
    // Assuming that you have already populated DailyStatistics with the data for each day
    return [
      FlSpot(0, dailyHours.monday.toDouble()),
      FlSpot(1, dailyHours.tuesday.toDouble()),
      FlSpot(2, dailyHours.wednesday.toDouble()),
      FlSpot(3, dailyHours.thursday.toDouble()),
      FlSpot(4, dailyHours.friday.toDouble()),
      FlSpot(5, dailyHours.saturday.toDouble()),
      FlSpot(6, dailyHours.sunday.toDouble()),
    ];
  }

  String toJson() {
    return json.encode(
      serializers.serializeWith(WeeklyStatistics.serializer, this),
    );
  }

  static WeeklyStatistics? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WeeklyStatistics.serializer,
      data,
    );
  }

  static Serializer<WeeklyStatistics> get serializer =>
      _$weeklyStatisticsSerializer;
}
