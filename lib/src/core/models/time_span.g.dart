// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_span.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeSpan _$weekly = const TimeSpan._('weekly');
const TimeSpan _$monthly = const TimeSpan._('monthly');
const TimeSpan _$unknown = const TimeSpan._('unknown');

TimeSpan _$vlOf(String name) {
  switch (name) {
    case 'weekly':
      return _$weekly;
    case 'monthly':
      return _$monthly;
    case 'unknown':
      return _$unknown;
    default:
      return _$unknown;
  }
}

final BuiltSet<TimeSpan> _$values = new BuiltSet<TimeSpan>(const <TimeSpan>[
  _$weekly,
  _$monthly,
  _$unknown,
]);

Serializer<TimeSpan> _$timeSpanSerializer = new _$TimeSpanSerializer();

class _$TimeSpanSerializer implements PrimitiveSerializer<TimeSpan> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'weekly': 'weekly',
    'monthly': 'monthly',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'weekly': 'weekly',
    'monthly': 'monthly',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[TimeSpan];
  @override
  final String wireName = 'TimeSpan';

  @override
  Object serialize(Serializers serializers, TimeSpan object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TimeSpan deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TimeSpan.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
