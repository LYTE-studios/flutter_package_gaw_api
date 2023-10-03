library washer_statistics;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/timespan.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/weighted_double.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/washer_chart.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'washer_statistics.g.dart';

abstract class WasherStatistics
    implements Built<WasherStatistics, WasherStatisticsBuilder> {
  WasherStatistics._();

  factory WasherStatistics([Function(WasherStatisticsBuilder b) updates]) =
      _$WasherStatistics;

  @BuiltValueField(wireName: 'jobs_done')
  int get jobsDone;

  @BuiltValueField(wireName: 'jobs_scheduled')
  int get jobsScheduled;

  @BuiltValueField(wireName: 'average_hours')
  double get averageHours;

  @BuiltValueField(wireName: 'average_change')
  double get averageChange;

  @BuiltValueField(wireName: 'timespan')
  Timespan get timespan;

  @BuiltValueField(wireName: 'charts')
  List<WasherChart> get charts;

  String toJson() {
    return json.encode(
      serializers.serializeWith(WasherStatistics.serializer, this),
    );
  }

  static WasherStatistics? fromJson(String jsonString) {
    return serializers.deserializeWith(
      WasherStatistics.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<WasherStatistics> get serializer =>
      _$washerStatisticsSerializer;
}
