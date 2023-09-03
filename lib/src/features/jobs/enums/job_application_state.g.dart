// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const JobApplicationState _$approved = const JobApplicationState._('approved');
const JobApplicationState _$pending = const JobApplicationState._('pending');
const JobApplicationState _$rejected = const JobApplicationState._('rejected');
const JobApplicationState _$unknown = const JobApplicationState._('unknown');

JobApplicationState _$vlOf(String name) {
  switch (name) {
    case 'approved':
      return _$approved;
    case 'pending':
      return _$pending;
    case 'rejected':
      return _$rejected;
    case 'unknown':
      return _$unknown;
    default:
      return _$unknown;
  }
}

final BuiltSet<JobApplicationState> _$values =
    new BuiltSet<JobApplicationState>(const <JobApplicationState>[
  _$approved,
  _$pending,
  _$rejected,
  _$unknown,
]);

Serializer<JobApplicationState> _$jobApplicationStateSerializer =
    new _$JobApplicationStateSerializer();

class _$JobApplicationStateSerializer
    implements PrimitiveSerializer<JobApplicationState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'approved': 'approved',
    'pending': 'pending',
    'rejected': 'rejected',
    'unknown': 'unknown',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'approved': 'approved',
    'pending': 'pending',
    'rejected': 'rejected',
    'unknown': 'unknown',
  };

  @override
  final Iterable<Type> types = const <Type>[JobApplicationState];
  @override
  final String wireName = 'JobApplicationState';

  @override
  Object serialize(Serializers serializers, JobApplicationState object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  JobApplicationState deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      JobApplicationState.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
