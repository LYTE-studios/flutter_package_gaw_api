import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'weekly_statistics_list_response.g.dart';

abstract class WeeklyStatisticsListResponse
    implements
        Built<WeeklyStatisticsListResponse,
            WeeklyStatisticsListResponseBuilder> {
  WeeklyStatisticsListResponse._();

  factory WeeklyStatisticsListResponse(
          [void Function(WeeklyStatisticsListResponseBuilder) updates]) =
      _$WeeklyStatisticsListResponse;

  @BuiltValueField(wireName: 'statistics')
  BuiltList<WeeklyStatistics> get weeks;

  String toJson() {
    return json.encode(
      serializers.serializeWith(WeeklyStatisticsListResponse.serializer, this),
    );
  }

  static WeeklyStatisticsListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WeeklyStatisticsListResponse.serializer,
      data,
    );
  }

  static Serializer<WeeklyStatisticsListResponse> get serializer =>
      _$weeklyStatisticsListResponseSerializer;
}
