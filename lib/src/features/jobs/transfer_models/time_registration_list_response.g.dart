// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_registration_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeRegistrationListResponse>
    _$timeRegistrationListResponseSerializer =
    new _$TimeRegistrationListResponseSerializer();

class _$TimeRegistrationListResponseSerializer
    implements StructuredSerializer<TimeRegistrationListResponse> {
  @override
  final Iterable<Type> types = const [
    TimeRegistrationListResponse,
    _$TimeRegistrationListResponse
  ];
  @override
  final String wireName = 'TimeRegistrationListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TimeRegistrationListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timeRegistrations;
    if (value != null) {
      result
        ..add('times')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TimeRegistration)])));
    }
    return result;
  }

  @override
  TimeRegistrationListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeRegistrationListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'times':
          result.timeRegistrations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeRegistration)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TimeRegistrationListResponse extends TimeRegistrationListResponse {
  @override
  final BuiltList<TimeRegistration>? timeRegistrations;

  factory _$TimeRegistrationListResponse(
          [void Function(TimeRegistrationListResponseBuilder)? updates]) =>
      (new TimeRegistrationListResponseBuilder()..update(updates))._build();

  _$TimeRegistrationListResponse._({this.timeRegistrations}) : super._();

  @override
  TimeRegistrationListResponse rebuild(
          void Function(TimeRegistrationListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeRegistrationListResponseBuilder toBuilder() =>
      new TimeRegistrationListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeRegistrationListResponse &&
        timeRegistrations == other.timeRegistrations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeRegistrations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistrationListResponse')
          ..add('timeRegistrations', timeRegistrations))
        .toString();
  }
}

class TimeRegistrationListResponseBuilder
    implements
        Builder<TimeRegistrationListResponse,
            TimeRegistrationListResponseBuilder> {
  _$TimeRegistrationListResponse? _$v;

  ListBuilder<TimeRegistration>? _timeRegistrations;
  ListBuilder<TimeRegistration> get timeRegistrations =>
      _$this._timeRegistrations ??= new ListBuilder<TimeRegistration>();
  set timeRegistrations(ListBuilder<TimeRegistration>? timeRegistrations) =>
      _$this._timeRegistrations = timeRegistrations;

  TimeRegistrationListResponseBuilder();

  TimeRegistrationListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeRegistrations = $v.timeRegistrations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeRegistrationListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeRegistrationListResponse;
  }

  @override
  void update(void Function(TimeRegistrationListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeRegistrationListResponse build() => _build();

  _$TimeRegistrationListResponse _build() {
    _$TimeRegistrationListResponse _$result;
    try {
      _$result = _$v ??
          new _$TimeRegistrationListResponse._(
              timeRegistrations: _timeRegistrations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'timeRegistrations';
        _timeRegistrations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TimeRegistrationListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
