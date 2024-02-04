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
    value = object.washer;
    if (value != null) {
      result
        ..add('washer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Washer)));
    }
    value = object.washerSignatureUrl;
    if (value != null) {
      result
        ..add('washer_signature')
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
        case 'washer':
          result.washer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Washer))! as Washer);
          break;
        case 'washer_signature':
          result.washerSignatureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_signature':
          result.customerSignatureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final Washer? washer;
  @override
  final String? washerSignatureUrl;
  @override
  final String? customerSignatureUrl;

  factory _$TimeRegistration(
          [void Function(TimeRegistrationBuilder)? updates]) =>
      (new TimeRegistrationBuilder()..update(updates))._build();

  _$TimeRegistration._(
      {required this.id,
      this.startTime,
      this.endTime,
      this.washer,
      this.washerSignatureUrl,
      this.customerSignatureUrl})
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
        washer == other.washer &&
        washerSignatureUrl == other.washerSignatureUrl &&
        customerSignatureUrl == other.customerSignatureUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, washer.hashCode);
    _$hash = $jc(_$hash, washerSignatureUrl.hashCode);
    _$hash = $jc(_$hash, customerSignatureUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistration')
          ..add('id', id)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('washer', washer)
          ..add('washerSignatureUrl', washerSignatureUrl)
          ..add('customerSignatureUrl', customerSignatureUrl))
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

  WasherBuilder? _washer;
  WasherBuilder get washer => _$this._washer ??= new WasherBuilder();
  set washer(WasherBuilder? washer) => _$this._washer = washer;

  String? _washerSignatureUrl;
  String? get washerSignatureUrl => _$this._washerSignatureUrl;
  set washerSignatureUrl(String? washerSignatureUrl) =>
      _$this._washerSignatureUrl = washerSignatureUrl;

  String? _customerSignatureUrl;
  String? get customerSignatureUrl => _$this._customerSignatureUrl;
  set customerSignatureUrl(String? customerSignatureUrl) =>
      _$this._customerSignatureUrl = customerSignatureUrl;

  TimeRegistrationBuilder();

  TimeRegistrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _washer = $v.washer?.toBuilder();
      _washerSignatureUrl = $v.washerSignatureUrl;
      _customerSignatureUrl = $v.customerSignatureUrl;
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
              washer: _washer?.build(),
              washerSignatureUrl: washerSignatureUrl,
              customerSignatureUrl: customerSignatureUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'washer';
        _washer?.build();
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
