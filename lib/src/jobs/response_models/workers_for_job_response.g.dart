// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workers_for_job_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkersForJobResponse> _$workersForJobResponseSerializer =
    new _$WorkersForJobResponseSerializer();

class _$WorkersForJobResponseSerializer
    implements StructuredSerializer<WorkersForJobResponse> {
  @override
  final Iterable<Type> types = const [
    WorkersForJobResponse,
    _$WorkersForJobResponse
  ];
  @override
  final String wireName = 'WorkersForJobResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkersForJobResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'workers',
      serializers.serialize(object.workers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Worker)])),
      'time_registrations',
      serializers.serialize(object.timeRegistrations,
          specifiedType: const FullType(
              BuiltList, const [const FullType(TimeRegistration)])),
    ];

    return result;
  }

  @override
  WorkersForJobResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkersForJobResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'workers':
          result.workers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Worker)]))!
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

class _$WorkersForJobResponse extends WorkersForJobResponse {
  @override
  final BuiltList<Worker> workers;
  @override
  final BuiltList<TimeRegistration> timeRegistrations;

  factory _$WorkersForJobResponse(
          [void Function(WorkersForJobResponseBuilder)? updates]) =>
      (new WorkersForJobResponseBuilder()..update(updates))._build();

  _$WorkersForJobResponse._(
      {required this.workers, required this.timeRegistrations})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workers, r'WorkersForJobResponse', 'workers');
    BuiltValueNullFieldError.checkNotNull(
        timeRegistrations, r'WorkersForJobResponse', 'timeRegistrations');
  }

  @override
  WorkersForJobResponse rebuild(
          void Function(WorkersForJobResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkersForJobResponseBuilder toBuilder() =>
      new WorkersForJobResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkersForJobResponse &&
        workers == other.workers &&
        timeRegistrations == other.timeRegistrations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workers.hashCode);
    _$hash = $jc(_$hash, timeRegistrations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkersForJobResponse')
          ..add('workers', workers)
          ..add('timeRegistrations', timeRegistrations))
        .toString();
  }
}

class WorkersForJobResponseBuilder
    implements Builder<WorkersForJobResponse, WorkersForJobResponseBuilder> {
  _$WorkersForJobResponse? _$v;

  ListBuilder<Worker>? _workers;
  ListBuilder<Worker> get workers =>
      _$this._workers ??= new ListBuilder<Worker>();
  set workers(ListBuilder<Worker>? workers) => _$this._workers = workers;

  ListBuilder<TimeRegistration>? _timeRegistrations;
  ListBuilder<TimeRegistration> get timeRegistrations =>
      _$this._timeRegistrations ??= new ListBuilder<TimeRegistration>();
  set timeRegistrations(ListBuilder<TimeRegistration>? timeRegistrations) =>
      _$this._timeRegistrations = timeRegistrations;

  WorkersForJobResponseBuilder();

  WorkersForJobResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workers = $v.workers.toBuilder();
      _timeRegistrations = $v.timeRegistrations.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkersForJobResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkersForJobResponse;
  }

  @override
  void update(void Function(WorkersForJobResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkersForJobResponse build() => _build();

  _$WorkersForJobResponse _build() {
    _$WorkersForJobResponse _$result;
    try {
      _$result = _$v ??
          new _$WorkersForJobResponse._(
              workers: workers.build(),
              timeRegistrations: timeRegistrations.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workers';
        workers.build();
        _$failedField = 'timeRegistrations';
        timeRegistrations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkersForJobResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
