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

class _$TimeRegistration extends TimeRegistration {
  @override
  final String id;
  @override
  final String startTime;
  @override
  final String endTime;

  factory _$TimeRegistration(
          [void Function(TimeRegistrationBuilder)? updates]) =>
      (new TimeRegistrationBuilder()..update(updates))._build();

  _$TimeRegistration._(
      {required this.id, required this.startTime, required this.endTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'TimeRegistration', 'id');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'TimeRegistration', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        endTime, r'TimeRegistration', 'endTime');
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
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistration')
          ..add('id', id)
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimeRegistrationBuilder
    implements Builder<TimeRegistration, TimeRegistrationBuilder> {
  _$TimeRegistration? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  TimeRegistrationBuilder();

  TimeRegistrationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
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
    final _$result = _$v ??
        new _$TimeRegistration._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TimeRegistration', 'id'),
            startTime: BuiltValueNullFieldError.checkNotNull(
                startTime, r'TimeRegistration', 'startTime'),
            endTime: BuiltValueNullFieldError.checkNotNull(
                endTime, r'TimeRegistration', 'endTime'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
