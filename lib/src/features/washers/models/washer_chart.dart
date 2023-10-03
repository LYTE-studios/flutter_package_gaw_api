library washer_chart;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/weighted_double.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'washer_chart.g.dart';

abstract class WasherChart implements Built<WasherChart, WasherChartBuilder> {
  WasherChart._();

  factory WasherChart([Function(WasherChartBuilder b) updates]) = _$WasherChart;

  @BuiltValueField(wireName: 'total_hours')
  double get totalHours;

  @BuiltValueField(wireName: 'total_change')
  double get totalChange;

  @BuiltValueField(wireName: 'chart')
  List<WeightedDouble> get chart;

  String toJson() {
    return json.encode(
      serializers.serializeWith(WasherChart.serializer, this),
    );
  }

  static WasherChart? fromJson(String jsonString) {
    return serializers.deserializeWith(
      WasherChart.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<WasherChart> get serializer => _$washerChartSerializer;
}
