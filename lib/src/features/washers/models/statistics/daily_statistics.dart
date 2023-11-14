library daily_statistics;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'daily_statistics.g.dart';

abstract class DailyStatistics implements Built<DailyStatistics, DailyStatisticsBuilder> {
  DailyStatistics._();

  factory DailyStatistics([void Function(DailyStatisticsBuilder) updates]) = _$DailyStatistics;

  @BuiltValueField(wireName: 'Mon')
  int get monday;
  
  @BuiltValueField(wireName: 'Tue')
  int get tuesday; 
  
  @BuiltValueField(wireName: 'Wed')
  int get wednesday; 
  
  @BuiltValueField(wireName: 'Thu')
  int get thursday; 
  
  @BuiltValueField(wireName: 'Fri')
  int get friday; 
  
  @BuiltValueField(wireName: 'Sat')
  int get saturday; 
  
  @BuiltValueField(wireName: 'Sun')
  int get sunday;
  
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