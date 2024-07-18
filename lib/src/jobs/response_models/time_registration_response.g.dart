// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_registration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeRegistrationResponse> _$timeRegistrationResponseSerializer =
    new _$TimeRegistrationResponseSerializer();

class _$TimeRegistrationResponseSerializer
    implements StructuredSerializer<TimeRegistrationResponse> {
  @override
  final Iterable<Type> types = const [
    TimeRegistrationResponse,
    _$TimeRegistrationResponse
  ];
  @override
  final String wireName = 'TimeRegistrationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TimeRegistrationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timeRegistration;
    if (value != null) {
      result
        ..add('time_registration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(TimeRegistration)));
    }
    return result;
  }

  @override
  TimeRegistrationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeRegistrationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'time_registration':
          result.timeRegistration.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TimeRegistration))!
              as TimeRegistration);
          break;
      }
    }

    return result.build();
  }
}

class _$TimeRegistrationResponse extends TimeRegistrationResponse {
  @override
  final TimeRegistration? timeRegistration;

  factory _$TimeRegistrationResponse(
          [void Function(TimeRegistrationResponseBuilder)? updates]) =>
      (new TimeRegistrationResponseBuilder()..update(updates))._build();

  _$TimeRegistrationResponse._({this.timeRegistration}) : super._();

  @override
  TimeRegistrationResponse rebuild(
          void Function(TimeRegistrationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeRegistrationResponseBuilder toBuilder() =>
      new TimeRegistrationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeRegistrationResponse &&
        timeRegistration == other.timeRegistration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeRegistration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistrationResponse')
          ..add('timeRegistration', timeRegistration))
        .toString();
  }
}

class TimeRegistrationResponseBuilder
    implements
        Builder<TimeRegistrationResponse, TimeRegistrationResponseBuilder> {
  _$TimeRegistrationResponse? _$v;

  TimeRegistrationBuilder? _timeRegistration;
  TimeRegistrationBuilder get timeRegistration =>
      _$this._timeRegistration ??= new TimeRegistrationBuilder();
  set timeRegistration(TimeRegistrationBuilder? timeRegistration) =>
      _$this._timeRegistration = timeRegistration;

  TimeRegistrationResponseBuilder();

  TimeRegistrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeRegistration = $v.timeRegistration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeRegistrationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeRegistrationResponse;
  }

  @override
  void update(void Function(TimeRegistrationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeRegistrationResponse build() => _build();

  _$TimeRegistrationResponse _build() {
    _$TimeRegistrationResponse _$result;
    try {
      _$result = _$v ??
          new _$TimeRegistrationResponse._(
              timeRegistration: _timeRegistration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeRegistration';
        _timeRegistration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TimeRegistrationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
