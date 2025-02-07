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
          specifiedType: const FullType(int)),
      'end_time',
      serializers.serialize(object.endTime, specifiedType: const FullType(int)),
      'break_time',
      serializers.serialize(object.breakTime,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.customerSignature;
    if (value != null) {
      result
        ..add('customer_signature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Uint8List)));
    }
    value = object.workerSignature;
    if (value != null) {
      result
        ..add('worker_signature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Uint8List)));
    }
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
              specifiedType: const FullType(int))! as int;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'break_time':
          result.breakTime = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'customer_signature':
          result.customerSignature = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List)) as Uint8List?;
          break;
        case 'worker_signature':
          result.workerSignature = serializers.deserialize(value,
              specifiedType: const FullType(Uint8List)) as Uint8List?;
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
  final int startTime;
  @override
  final int endTime;
  @override
  final int breakTime;
  @override
  final Uint8List? customerSignature;
  @override
  final Uint8List? workerSignature;

  factory _$TimeRegistrationRequest(
          [void Function(TimeRegistrationRequestBuilder)? updates]) =>
      (new TimeRegistrationRequestBuilder()..update(updates))._build();

  _$TimeRegistrationRequest._(
      {required this.jobId,
      required this.startTime,
      required this.endTime,
      required this.breakTime,
      this.customerSignature,
      this.workerSignature})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'TimeRegistrationRequest', 'jobId');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'TimeRegistrationRequest', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        endTime, r'TimeRegistrationRequest', 'endTime');
    BuiltValueNullFieldError.checkNotNull(
        breakTime, r'TimeRegistrationRequest', 'breakTime');
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
        endTime == other.endTime &&
        breakTime == other.breakTime &&
        customerSignature == other.customerSignature &&
        workerSignature == other.workerSignature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, breakTime.hashCode);
    _$hash = $jc(_$hash, customerSignature.hashCode);
    _$hash = $jc(_$hash, workerSignature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistrationRequest')
          ..add('jobId', jobId)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('breakTime', breakTime)
          ..add('customerSignature', customerSignature)
          ..add('workerSignature', workerSignature))
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

  int? _startTime;
  int? get startTime => _$this._startTime;
  set startTime(int? startTime) => _$this._startTime = startTime;

  int? _endTime;
  int? get endTime => _$this._endTime;
  set endTime(int? endTime) => _$this._endTime = endTime;

  int? _breakTime;
  int? get breakTime => _$this._breakTime;
  set breakTime(int? breakTime) => _$this._breakTime = breakTime;

  Uint8List? _customerSignature;
  Uint8List? get customerSignature => _$this._customerSignature;
  set customerSignature(Uint8List? customerSignature) =>
      _$this._customerSignature = customerSignature;

  Uint8List? _workerSignature;
  Uint8List? get workerSignature => _$this._workerSignature;
  set workerSignature(Uint8List? workerSignature) =>
      _$this._workerSignature = workerSignature;

  TimeRegistrationRequestBuilder();

  TimeRegistrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _breakTime = $v.breakTime;
      _customerSignature = $v.customerSignature;
      _workerSignature = $v.workerSignature;
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
                endTime, r'TimeRegistrationRequest', 'endTime'),
            breakTime: BuiltValueNullFieldError.checkNotNull(
                breakTime, r'TimeRegistrationRequest', 'breakTime'),
            customerSignature: customerSignature,
            workerSignature: workerSignature);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
