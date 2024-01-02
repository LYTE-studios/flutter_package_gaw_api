import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_span.g.dart';

class TimeSpan extends EnumClass {
  @BuiltValueEnumConst(wireName: 'weekly')
  static const TimeSpan weekly = _$weekly;

  @BuiltValueEnumConst(wireName: 'monthly')
  static const TimeSpan monthly = _$monthly;

  @BuiltValueEnumConst(wireName: 'unknown', fallback: true)
  static const TimeSpan unknown = _$unknown;

  const TimeSpan._(String name) : super(name);

  static TimeSpan valueOf(String name) => _$vlOf(name);

  static BuiltSet<TimeSpan> get values => _$values;

  static Serializer<TimeSpan> get serializer => _$timeSpanSerializer;
}
