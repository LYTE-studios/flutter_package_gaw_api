import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

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

  /// Plots to FlSpot list
  List<FlSpot> toChartPlot() {
    var months = monthlyStats.toMap();
    return [
      FlSpot(0, months['Jan']!.averageHours),
      FlSpot(1, months['Feb']!.averageHours),
      FlSpot(2, months['Mar']!.averageHours),
      FlSpot(3, months['Apr']!.averageHours),
      FlSpot(4, months['May']!.averageHours),
      FlSpot(5, months['Jun']!.averageHours),
      FlSpot(6, months['Jul']!.averageHours),
      FlSpot(7, months['Aug']!.averageHours),
      FlSpot(8, months['Sep']!.averageHours),
      FlSpot(9, months['Oct']!.averageHours),
      FlSpot(10, months['Nov']!.averageHours),
      FlSpot(11, months['Dec']!.averageHours),
    ];
  }

  static int computeYearlyTrend(
      YearlyStatistics first, YearlyStatistics second) {
    double firstAverage = first.totalAverageHours();
    double secondAverage = second.totalAverageHours();
    return (firstAverage - secondAverage).floor();
  }

  double totalAverageHours() {
    var months = monthlyStats.toMap();
    double total = 0;
    for (var i = 0; i < months.length; i++) {
      total += months.values.elementAt(i).averageHours;
    }
    return (total / 12).roundToDouble();
  }

  String toJson() {
    return json.encode(
      serializers.serializeWith(YearlyStatistics.serializer, this),
    );
  }

  static YearlyStatistics? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      YearlyStatistics.serializer,
      data,
    );
  }

  static Serializer<YearlyStatistics> get serializer =>
      _$yearlyStatisticsSerializer;
}
