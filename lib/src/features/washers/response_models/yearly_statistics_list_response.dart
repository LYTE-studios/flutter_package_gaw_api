import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/statistics/yearly_statistics.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'yearly_statistics_list_response.g.dart';

abstract class YearlyStatisticsListResponse implements Built<YearlyStatisticsListResponse, YearlyStatisticsListResponseBuilder> {
  YearlyStatisticsListResponse._();

  factory YearlyStatisticsListResponse([void Function(YearlyStatisticsListResponseBuilder) updates]) = _$YearlyStatisticsListResponse;

  @BuiltValueField(wireName: 'statistics')
  BuiltList<YearlyStatistics> get years;

  String toJson() {
    return json.encode(
      serializers.serializeWith(YearlyStatisticsListResponse.serializer, this),
    );
  }

  static YearlyStatisticsListResponse? fromJson(String jsonString) {
    return serializers.deserializeWith(
      YearlyStatisticsListResponse.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<YearlyStatisticsListResponse> get serializer => _$yearlyStatisticsListResponseSerializer;
}
