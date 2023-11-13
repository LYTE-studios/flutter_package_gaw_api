library daily_statistics;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'daily_statistics.g.dart';

abstract class DailyStatistics implements Built<DailyStatistics, DailyStatisticsBuilder> {
  DailyStatistics._();

  factory DailyStatistics([void Function(DailyStatisticsBuilder) updates]) = _$DailyStatistics;

  @BuiltValueField(wireName: 'hours_worked')
  double get hoursWorked;

  String toJson() {
    return json.encode(
      serializers.serializeWith(DailyStatistics.serializer, this),
    );
  }

  static DailyStatistics? fromJson(String jsonString) {
    return serializers.deserializeWith(
      DailyStatistics.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<DailyStatistics> get serializer => _$dailyStatisticsSerializer;
}