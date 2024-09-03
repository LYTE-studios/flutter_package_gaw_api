import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'admin_statistics_overview_response.g.dart';

abstract class AdminStatisticsOverviewResponse
    implements
        Built<AdminStatisticsOverviewResponse,
            AdminStatisticsOverviewResponseBuilder> {
  AdminStatisticsOverviewResponse._();

  factory AdminStatisticsOverviewResponse(
          [void Function(AdminStatisticsOverviewResponseBuilder) updates]) =
      _$AdminStatisticsOverviewResponse;

  @BuiltValueField(wireName: 'jobs_count')
  int get jobCount;

  @BuiltValueField(wireName: 'candidates_count')
  int get candidatesCount;

  @BuiltValueField(wireName: 'planned_jobs_count')
  int get plannedJobCount;

  @BuiltValueField(wireName: 'jobs_without_candidates_count')
  int? get jobsWithoutCandidatesCount;

  @BuiltValueField(wireName: 'coming_jobs_count')
  int get comingJobCount;

  @BuiltValueField(wireName: 'ongoing_jobs_count')
  int get ongoingJobCount;

  @BuiltValueField(wireName: 'completed_jobs_count')
  int get completedJobCount;

  @BuiltValueField(wireName: 'unserviced_jobs_count')
  int get unservicedJobCount;

  @BuiltValueField(wireName: 'trend_job_count')
  int? get trendJobCount;

  @BuiltValueField(wireName: 'trend_hours_worked')
  int? get trendHoursWorked;

  @BuiltValueField(wireName: 'hours_worked_stats')
  GeneralStatistics get hoursWorkedStats;

  int? getHoursWorkedTrend() {
    if (trendHoursWorked == 0 || trendHoursWorked == null) {
      return null;
    }

    return (hoursWorkedStats.averageHours - trendHoursWorked!).round().toInt();
  }

  double getJobCountTrend() {
    if (trendJobCount == 0 || trendJobCount == null) {
      return 100;
    }

    if (jobCount == 0 || jobCount == null) {
      return -100;
    }

    return (((jobCount - trendJobCount!) / jobCount) * 100).roundToDouble();
  }

  String toJson() {
    return json.encode(
      serializers.serializeWith(
          AdminStatisticsOverviewResponse.serializer, this),
    );
  }

  static AdminStatisticsOverviewResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      AdminStatisticsOverviewResponse.serializer,
      data,
    );
  }

  static Serializer<AdminStatisticsOverviewResponse> get serializer =>
      _$adminStatisticsOverviewResponseSerializer;
}
