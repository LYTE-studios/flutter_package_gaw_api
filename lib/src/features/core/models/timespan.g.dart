// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timespan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Timespan _$weekly = const Timespan._('weekly');
const Timespan _$monthly = const Timespan._('monthly');
const Timespan _$unknown = const Timespan._('unknown');

Timespan _$vlOf(String name) {
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

final BuiltSet<Timespan> _$values = new BuiltSet<Timespan>(const <Timespan>[
  _$weekly,
  _$monthly,
  _$unknown,
]);

Serializer<Timespan> _$timespanSerializer = new _$TimespanSerializer();

class _$TimespanSerializer implements PrimitiveSerializer<Timespan> {
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
  final Iterable<Type> types = const <Type>[Timespan];
  @override
  final String wireName = 'Timespan';

  @override
  Object serialize(Serializers serializers, Timespan object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Timespan deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Timespan.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
