// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'washers_for_job_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WashersForJobResponse> _$washersForJobResponseSerializer =
    new _$WashersForJobResponseSerializer();

class _$WashersForJobResponseSerializer
    implements StructuredSerializer<WashersForJobResponse> {
  @override
  final Iterable<Type> types = const [
    WashersForJobResponse,
    _$WashersForJobResponse
  ];
  @override
  final String wireName = 'WashersForJobResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WashersForJobResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'washers',
      serializers.serialize(object.washers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Washer)])),
      'time_registrations',
      serializers.serialize(object.timeRegistrations,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TimeRegistration)])),
    ];

    return result;
  }

  @override
  WashersForJobResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WashersForJobResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'washers':
          result.washers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Washer)]))!
              as BuiltList<Object?>);
          break;
        case 'time_registrations':
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

class _$WashersForJobResponse extends WashersForJobResponse {
  @override
  final BuiltList<Washer> washers;
  @override
  final BuiltList<TimeRegistration> timeRegistrations;

  factory _$WashersForJobResponse(
          [void Function(WashersForJobResponseBuilder)? updates]) =>
      (new WashersForJobResponseBuilder()..update(updates))._build();

  _$WashersForJobResponse._(
      {required this.washers, required this.timeRegistrations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        washers, r'WashersForJobResponse', 'washers');
    BuiltValueNullFieldError.checkNotNull(
        timeRegistrations, r'WashersForJobResponse', 'timeRegistrations');
  }

  @override
  WashersForJobResponse rebuild(
          void Function(WashersForJobResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WashersForJobResponseBuilder toBuilder() =>
      new WashersForJobResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WashersForJobResponse &&
        washers == other.washers &&
        timeRegistrations == other.timeRegistrations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, washers.hashCode);
    _$hash = $jc(_$hash, timeRegistrations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WashersForJobResponse')
          ..add('washers', washers)
          ..add('timeRegistrations', timeRegistrations))
        .toString();
  }
}

class WashersForJobResponseBuilder
    implements Builder<WashersForJobResponse, WashersForJobResponseBuilder> {
  _$WashersForJobResponse? _$v;

  ListBuilder<Washer>? _washers;
  ListBuilder<Washer> get washers =>
      _$this._washers ??= new ListBuilder<Washer>();
  set washers(ListBuilder<Washer>? washers) => _$this._washers = washers;

  ListBuilder<TimeRegistration>? _timeRegistrations;
  ListBuilder<TimeRegistration> get timeRegistrations =>
      _$this._timeRegistrations ??= new ListBuilder<TimeRegistration>();
  set timeRegistrations(ListBuilder<TimeRegistration>? timeRegistrations) =>
      _$this._timeRegistrations = timeRegistrations;

  WashersForJobResponseBuilder();

  WashersForJobResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _washers = $v.washers.toBuilder();
      _timeRegistrations = $v.timeRegistrations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WashersForJobResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WashersForJobResponse;
  }

  @override
  void update(void Function(WashersForJobResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WashersForJobResponse build() => _build();

  _$WashersForJobResponse _build() {
    _$WashersForJobResponse _$result;
    try {
      _$result = _$v ??
          new _$WashersForJobResponse._(
              washers: washers.build(),
              timeRegistrations: timeRegistrations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'washers';
        washers.build();
        _$failedField = 'timeRegistrations';
        timeRegistrations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WashersForJobResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
