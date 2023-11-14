// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_frame.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeFrame _$week = const TimeFrame._('week');
const TimeFrame _$month = const TimeFrame._('month');

TimeFrame _$vlOf(String name) {
  switch (name) {
    case 'week':
      return _$week;
    case 'month':
      return _$month;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TimeFrame> _$values = new BuiltSet<TimeFrame>(const <TimeFrame>[
  _$week,
  _$month,
]);

Serializer<TimeFrame> _$timeFrameSerializer = new _$TimeFrameSerializer();

class _$TimeFrameSerializer implements PrimitiveSerializer<TimeFrame> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'week': 'week',
    'month': 'month',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'week': 'week',
    'month': 'month',
  };

  @override
  final Iterable<Type> types = const <Type>[TimeFrame];
  @override
  final String wireName = 'TimeFrame';

  @override
  Object serialize(Serializers serializers, TimeFrame object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TimeFrame deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TimeFrame.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
