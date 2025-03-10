library weighted_double;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'weighted_double.g.dart';

abstract class WeightedDouble
    implements Built<WeightedDouble, WeightedDoubleBuilder> {
  WeightedDouble._();

  factory WeightedDouble([Function(WeightedDoubleBuilder b) updates]) =
      _$WeightedDouble;

  @BuiltValueField(wireName: 'weight')
  int get weight;

  @BuiltValueField(wireName: 'value')
  double get value;

  String toJson() {
    return json.encode(
      serializers.serializeWith(WeightedDouble.serializer, this),
    );
  }

  static WeightedDouble? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WeightedDouble.serializer,
      data,
    );
  }

  static Serializer<WeightedDouble> get serializer =>
      _$weightedDoubleSerializer;
}
