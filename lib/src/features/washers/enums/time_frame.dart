import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_frame.g.dart';

class TimeFrame extends EnumClass {
  @BuiltValueEnumConst(wireName: 'week')
  static const TimeFrame week = _$week;

  @BuiltValueEnumConst(wireName: 'month')
  static const TimeFrame month = _$month;

  const TimeFrame._(String name) : super(name);

  static TimeFrame valueOf(String name) => _$vlOf(name);

  static BuiltSet<TimeFrame> get values => _$values;

  static Serializer<TimeFrame> get serializer => _$timeFrameSerializer;
}
