import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timespan.g.dart';

class Timespan extends EnumClass {
  @BuiltValueEnumConst(wireName: 'weekly')
  static const Timespan weekly = _$weekly;

  @BuiltValueEnumConst(wireName: 'monthly')
  static const Timespan monthly = _$monthly;

  @BuiltValueEnumConst(wireName: 'unknown', fallback: true)
  static const Timespan unknown = _$unknown;

  const Timespan._(String name) : super(name);

  static Timespan valueOf(String name) => _$vlOf(name);

  static BuiltSet<Timespan> get values => _$values;

  static Serializer<Timespan> get serializer => _$timespanSerializer;
}
