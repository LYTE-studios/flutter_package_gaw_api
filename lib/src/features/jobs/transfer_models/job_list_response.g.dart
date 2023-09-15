// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobListResponse> _$jobListResponseSerializer =
    new _$JobListResponseSerializer();

class _$JobListResponseSerializer
    implements StructuredSerializer<JobListResponse> {
  @override
  final Iterable<Type> types = const [JobListResponse, _$JobListResponse];
  @override
  final String wireName = 'JobListResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'upcoming_jobs',
      serializers.serialize(object.upcomingJobs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Job)])),
      'my_jobs',
      serializers.serialize(object.myJobs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Job)])),
    ];
    Object? value;
    value = object.jobs;
    if (value != null) {
      result
        ..add('jobs')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Job)])));
    }
    return result;
  }

  @override
  JobListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'upcoming_jobs':
          result.upcomingJobs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Job)]))!
              as BuiltList<Object?>);
          break;
        case 'my_jobs':
          result.myJobs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Job)]))!
              as BuiltList<Object?>);
          break;
        case 'jobs':
          result.jobs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Job)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$JobListResponse extends JobListResponse {
  @override
  final BuiltList<Job> upcomingJobs;
  @override
  final BuiltList<Job> myJobs;
  @override
  final BuiltList<Job>? jobs;

  factory _$JobListResponse([void Function(JobListResponseBuilder)? updates]) =>
      (new JobListResponseBuilder()..update(updates))._build();

  _$JobListResponse._(
      {required this.upcomingJobs, required this.myJobs, this.jobs})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        upcomingJobs, r'JobListResponse', 'upcomingJobs');
    BuiltValueNullFieldError.checkNotNull(myJobs, r'JobListResponse', 'myJobs');
  }

  @override
  JobListResponse rebuild(void Function(JobListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobListResponseBuilder toBuilder() =>
      new JobListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobListResponse &&
        upcomingJobs == other.upcomingJobs &&
        myJobs == other.myJobs &&
        jobs == other.jobs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, upcomingJobs.hashCode);
    _$hash = $jc(_$hash, myJobs.hashCode);
    _$hash = $jc(_$hash, jobs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobListResponse')
          ..add('upcomingJobs', upcomingJobs)
          ..add('myJobs', myJobs)
          ..add('jobs', jobs))
        .toString();
  }
}

class JobListResponseBuilder
    implements Builder<JobListResponse, JobListResponseBuilder> {
  _$JobListResponse? _$v;

  ListBuilder<Job>? _upcomingJobs;
  ListBuilder<Job> get upcomingJobs =>
      _$this._upcomingJobs ??= new ListBuilder<Job>();
  set upcomingJobs(ListBuilder<Job>? upcomingJobs) =>
      _$this._upcomingJobs = upcomingJobs;

  ListBuilder<Job>? _myJobs;
  ListBuilder<Job> get myJobs => _$this._myJobs ??= new ListBuilder<Job>();
  set myJobs(ListBuilder<Job>? myJobs) => _$this._myJobs = myJobs;

  ListBuilder<Job>? _jobs;
  ListBuilder<Job> get jobs => _$this._jobs ??= new ListBuilder<Job>();
  set jobs(ListBuilder<Job>? jobs) => _$this._jobs = jobs;

  JobListResponseBuilder();

  JobListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _upcomingJobs = $v.upcomingJobs.toBuilder();
      _myJobs = $v.myJobs.toBuilder();
      _jobs = $v.jobs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobListResponse;
  }

  @override
  void update(void Function(JobListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobListResponse build() => _build();

  _$JobListResponse _build() {
    _$JobListResponse _$result;
    try {
      _$result = _$v ??
          new _$JobListResponse._(
              upcomingJobs: upcomingJobs.build(),
              myJobs: myJobs.build(),
              jobs: _jobs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'upcomingJobs';
        upcomingJobs.build();
        _$failedField = 'myJobs';
        myJobs.build();
        _$failedField = 'jobs';
        _jobs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JobListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
