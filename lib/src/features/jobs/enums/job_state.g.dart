// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobState _$fulfilled = const JobState._('fulfilled');
const JobState _$pending = const JobState._('pending');
const JobState _$done = const JobState._('done');
const JobState _$cancelled = const JobState._('cancelled');
const JobState _$unknown = const JobState._('unknown');

JobState _$vlOf(String name) {
  switch (name) {
    case 'fulfilled':
      return _$fulfilled;
    case 'pending':
      return _$pending;
    case 'done':
      return _$done;
    case 'cancelled':
      return _$cancelled;
    case 'unknown':
      return _$unknown;
    default:
      return _$unknown;
  }
}

final BuiltSet<JobState> _$values = new BuiltSet<JobState>(const <JobState>[
  _$fulfilled,
  _$pending,
  _$done,
  _$cancelled,
  _$unknown,
]);

Serializer<JobState> _$jobStateSerializer = new _$JobStateSerializer();

class _$JobStateSerializer implements PrimitiveSerializer<JobState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'fulfilled': 'fulfilled',
    'pending': 'pending',
    'done': 'done',
    'cancelled': 'cancelled',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'fulfilled': 'fulfilled',
    'pending': 'pending',
    'done': 'done',
    'cancelled': 'cancelled',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[JobState];
  @override
  final String wireName = 'JobState';

  @override
  Object serialize(Serializers serializers, JobState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JobState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
