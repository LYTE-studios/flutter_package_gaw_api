library weighted_double;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

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

  static WeightedDouble? fromJson(String jsonString) {
    return serializers.deserializeWith(
      WeightedDouble.serializer,
      json.decode(jsonString),
    );
  }

  static Serializer<WeightedDouble> get serializer =>
      _$weightedDoubleSerializer;
}
