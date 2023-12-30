import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'monthly_statistics.g.dart';

abstract class MonthlyStatistics
    implements Built<MonthlyStatistics, MonthlyStatisticsBuilder> {
  MonthlyStatistics._();

  factory MonthlyStatistics([void Function(MonthlyStatisticsBuilder) updates]) =
      _$MonthlyStatistics;

  @BuiltValueField(wireName: 'average_hours')
  double get averageHours;

  String toJson() {
    return json.encode(
      serializers.serializeWith(MonthlyStatistics.serializer, this),
    );
  }

  static MonthlyStatistics? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      MonthlyStatistics.serializer,
      data,
    );
  }

  static Serializer<MonthlyStatistics> get serializer =>
      _$monthlyStatisticsSerializer;
}
