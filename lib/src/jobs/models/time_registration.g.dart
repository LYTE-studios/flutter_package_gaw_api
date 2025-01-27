// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_registration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeRegistration> _$timeRegistrationSerializer =
    new _$TimeRegistrationSerializer();

class _$TimeRegistrationSerializer
    implements StructuredSerializer<TimeRegistration> {
  @override
  final Iterable<Type> types = const [TimeRegistration, _$TimeRegistration];
  @override
  final String wireName = 'TimeRegistration';

  @override
  Iterable<Object?> serialize(Serializers serializers, TimeRegistration object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.worker;
    if (value != null) {
      result
        ..add('worker')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Worker)));
    }
    value = object.workerSignatureUrl;
    if (value != null) {
      result
        ..add('worker_signature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerSignatureUrl;
    if (value != null) {
      result
        ..add('customer_signature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.breakTime;
    if (value != null) {
      result
        ..add('break_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TimeRegistration deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeRegistrationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'worker':
          result.worker.replace(serializers.deserialize(value,
              specifiedType: const FullType(Worker))! as Worker);
          break;
        case 'worker_signature':
          result.workerSignatureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_signature':
          result.customerSignatureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'break_time':
          result.breakTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$TimeRegistration extends TimeRegistration {
  @override
  final String id;
  @override
  final int? startTime;
  @override
  final int? endTime;
  @override
  final Worker? worker;
  @override
  final String? workerSignatureUrl;
  @override
  final String? customerSignatureUrl;
  @override
  final int? breakTime;

  factory _$TimeRegistration(
          [void Function(TimeRegistrationBuilder)? updates]) =>
      (new TimeRegistrationBuilder()..update(updates))._build();

  _$TimeRegistration._(
      {required this.id,
      this.startTime,
      this.endTime,
      this.worker,
      this.workerSignatureUrl,
      this.customerSignatureUrl,
      this.breakTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TimeRegistration', 'id');
  }

  @override
  TimeRegistration rebuild(void Function(TimeRegistrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeRegistrationBuilder toBuilder() =>
      new TimeRegistrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeRegistration &&
        id == other.id &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        worker == other.worker &&
        workerSignatureUrl == other.workerSignatureUrl &&
        customerSignatureUrl == other.customerSignatureUrl &&
        breakTime == other.breakTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, worker.hashCode);
    _$hash = $jc(_$hash, workerSignatureUrl.hashCode);
    _$hash = $jc(_$hash, customerSignatureUrl.hashCode);
    _$hash = $jc(_$hash, breakTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistration')
          ..add('id', id)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('worker', worker)
          ..add('workerSignatureUrl', workerSignatureUrl)
          ..add('customerSignatureUrl', customerSignatureUrl)
          ..add('breakTime', breakTime))
        .toString();
  }
}

class TimeRegistrationBuilder
    implements Builder<TimeRegistration, TimeRegistrationBuilder> {
  _$TimeRegistration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _startTime;
  int? get startTime => _$this._startTime;
  set startTime(int? startTime) => _$this._startTime = startTime;

  int? _endTime;
  int? get endTime => _$this._endTime;
  set endTime(int? endTime) => _$this._endTime = endTime;

  WorkerBuilder? _worker;
  WorkerBuilder get worker => _$this._worker ??= new WorkerBuilder();
  set worker(WorkerBuilder? worker) => _$this._worker = worker;

  String? _workerSignatureUrl;
  String? get workerSignatureUrl => _$this._workerSignatureUrl;
  set workerSignatureUrl(String? workerSignatureUrl) =>
      _$this._workerSignatureUrl = workerSignatureUrl;

  String? _customerSignatureUrl;
  String? get customerSignatureUrl => _$this._customerSignatureUrl;
  set customerSignatureUrl(String? customerSignatureUrl) =>
      _$this._customerSignatureUrl = customerSignatureUrl;

  int? _breakTime;
  int? get breakTime => _$this._breakTime;
  set breakTime(int? breakTime) => _$this._breakTime = breakTime;

  TimeRegistrationBuilder();

  TimeRegistrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _worker = $v.worker?.toBuilder();
      _workerSignatureUrl = $v.workerSignatureUrl;
      _customerSignatureUrl = $v.customerSignatureUrl;
      _breakTime = $v.breakTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeRegistration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeRegistration;
  }

  @override
  void update(void Function(TimeRegistrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeRegistration build() => _build();

  _$TimeRegistration _build() {
    _$TimeRegistration _$result;
    try {
      _$result = _$v ??
          new _$TimeRegistration._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'TimeRegistration', 'id'),
              startTime: startTime,
              endTime: endTime,
              worker: _worker?.build(),
              workerSignatureUrl: workerSignatureUrl,
              customerSignatureUrl: customerSignatureUrl,
              breakTime: breakTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'worker';
        _worker?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TimeRegistration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
