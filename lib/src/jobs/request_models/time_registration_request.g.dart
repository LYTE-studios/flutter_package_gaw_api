// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_registration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeRegistrationRequest> _$timeRegistrationRequestSerializer =
    new _$TimeRegistrationRequestSerializer();

class _$TimeRegistrationRequestSerializer
    implements StructuredSerializer<TimeRegistrationRequest> {
  @override
  final Iterable<Type> types = const [
    TimeRegistrationRequest,
    _$TimeRegistrationRequest
  ];
  @override
  final String wireName = 'TimeRegistrationRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TimeRegistrationRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'job_id',
      serializers.serialize(object.jobId,
          specifiedType: const FullType(String)),
      'start_time',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(String)),
      'end_time',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TimeRegistrationRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeRegistrationRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'job_id':
          result.jobId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TimeRegistrationRequest extends TimeRegistrationRequest {
  @override
  final String jobId;
  @override
  final String startTime;
  @override
  final String endTime;

  factory _$TimeRegistrationRequest(
          [void Function(TimeRegistrationRequestBuilder)? updates]) =>
      (new TimeRegistrationRequestBuilder()..update(updates))._build();

  _$TimeRegistrationRequest._(
      {required this.jobId, required this.startTime, required this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'TimeRegistrationRequest', 'jobId');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'TimeRegistrationRequest', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        endTime, r'TimeRegistrationRequest', 'endTime');
  }

  @override
  TimeRegistrationRequest rebuild(
          void Function(TimeRegistrationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeRegistrationRequestBuilder toBuilder() =>
      new TimeRegistrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeRegistrationRequest &&
        jobId == other.jobId &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistrationRequest')
          ..add('jobId', jobId)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeRegistrationRequestBuilder
    implements
        Builder<TimeRegistrationRequest, TimeRegistrationRequestBuilder> {
  _$TimeRegistrationRequest? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  TimeRegistrationRequestBuilder();

  TimeRegistrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeRegistrationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeRegistrationRequest;
  }

  @override
  void update(void Function(TimeRegistrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeRegistrationRequest build() => _build();

  _$TimeRegistrationRequest _build() {
    final _$result = _$v ??
        new _$TimeRegistrationRequest._(
            jobId: BuiltValueNullFieldError.checkNotNull(
                jobId, r'TimeRegistrationRequest', 'jobId'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TimeRegistrationRequest', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'TimeRegistrationRequest', 'endTime'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
