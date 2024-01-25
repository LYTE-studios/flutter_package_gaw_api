import 'dart:convert';

import 'package:built_collection/built_collection.dart';
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

  @BuiltValueField(wireName: 'planned_jobs_count')
  int get plannedJobCount;

  @BuiltValueField(wireName: 'coming_jobs_count')
  int get comingJobCount;

  @BuiltValueField(wireName: 'ongoing_jobs_count')
  int get ongoingJobCount;

  @BuiltValueField(wireName: 'completed_jobs_count')
  int get completedJobCount;

  @BuiltValueField(wireName: 'unserviced_jobs_count')
  int get unservicedJobCount;

  String toJson() {
    return json.encode(
      serializers.serializeWith(AdminStatisticsOverviewResponse.serializer, this),
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
