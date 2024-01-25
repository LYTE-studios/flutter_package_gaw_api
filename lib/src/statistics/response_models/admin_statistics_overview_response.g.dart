// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_statistics_overview_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdminStatisticsOverviewResponse>
    _$adminStatisticsOverviewResponseSerializer =
    new _$AdminStatisticsOverviewResponseSerializer();

class _$AdminStatisticsOverviewResponseSerializer
    implements StructuredSerializer<AdminStatisticsOverviewResponse> {
  @override
  final Iterable<Type> types = const [
    AdminStatisticsOverviewResponse,
    _$AdminStatisticsOverviewResponse
  ];
  @override
  final String wireName = 'AdminStatisticsOverviewResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AdminStatisticsOverviewResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'jobs_count',
      serializers.serialize(object.jobCount,
          specifiedType: const FullType(int)),
      'planned_jobs_count',
      serializers.serialize(object.plannedJobCount,
          specifiedType: const FullType(int)),
      'coming_jobs_count',
      serializers.serialize(object.comingJobCount,
          specifiedType: const FullType(int)),
      'ongoing_jobs_count',
      serializers.serialize(object.ongoingJobCount,
          specifiedType: const FullType(int)),
      'completed_jobs_count',
      serializers.serialize(object.completedJobCount,
          specifiedType: const FullType(int)),
      'unserviced_jobs_count',
      serializers.serialize(object.unservicedJobCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  AdminStatisticsOverviewResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminStatisticsOverviewResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobs_count':
          result.jobCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'planned_jobs_count':
          result.plannedJobCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'coming_jobs_count':
          result.comingJobCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'ongoing_jobs_count':
          result.ongoingJobCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'completed_jobs_count':
          result.completedJobCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'unserviced_jobs_count':
          result.unservicedJobCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AdminStatisticsOverviewResponse
    extends AdminStatisticsOverviewResponse {
  @override
  final int jobCount;
  @override
  final int plannedJobCount;
  @override
  final int comingJobCount;
  @override
  final int ongoingJobCount;
  @override
  final int completedJobCount;
  @override
  final int unservicedJobCount;

  factory _$AdminStatisticsOverviewResponse(
          [void Function(AdminStatisticsOverviewResponseBuilder)? updates]) =>
      (new AdminStatisticsOverviewResponseBuilder()..update(updates))._build();

  _$AdminStatisticsOverviewResponse._(
      {required this.jobCount,
      required this.plannedJobCount,
      required this.comingJobCount,
      required this.ongoingJobCount,
      required this.completedJobCount,
      required this.unservicedJobCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobCount, r'AdminStatisticsOverviewResponse', 'jobCount');
    BuiltValueNullFieldError.checkNotNull(
        plannedJobCount, r'AdminStatisticsOverviewResponse', 'plannedJobCount');
    BuiltValueNullFieldError.checkNotNull(
        comingJobCount, r'AdminStatisticsOverviewResponse', 'comingJobCount');
    BuiltValueNullFieldError.checkNotNull(
        ongoingJobCount, r'AdminStatisticsOverviewResponse', 'ongoingJobCount');
    BuiltValueNullFieldError.checkNotNull(completedJobCount,
        r'AdminStatisticsOverviewResponse', 'completedJobCount');
    BuiltValueNullFieldError.checkNotNull(unservicedJobCount,
        r'AdminStatisticsOverviewResponse', 'unservicedJobCount');
  }

  @override
  AdminStatisticsOverviewResponse rebuild(
          void Function(AdminStatisticsOverviewResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminStatisticsOverviewResponseBuilder toBuilder() =>
      new AdminStatisticsOverviewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminStatisticsOverviewResponse &&
        jobCount == other.jobCount &&
        plannedJobCount == other.plannedJobCount &&
        comingJobCount == other.comingJobCount &&
        ongoingJobCount == other.ongoingJobCount &&
        completedJobCount == other.completedJobCount &&
        unservicedJobCount == other.unservicedJobCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobCount.hashCode);
    _$hash = $jc(_$hash, plannedJobCount.hashCode);
    _$hash = $jc(_$hash, comingJobCount.hashCode);
    _$hash = $jc(_$hash, ongoingJobCount.hashCode);
    _$hash = $jc(_$hash, completedJobCount.hashCode);
    _$hash = $jc(_$hash, unservicedJobCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminStatisticsOverviewResponse')
          ..add('jobCount', jobCount)
          ..add('plannedJobCount', plannedJobCount)
          ..add('comingJobCount', comingJobCount)
          ..add('ongoingJobCount', ongoingJobCount)
          ..add('completedJobCount', completedJobCount)
          ..add('unservicedJobCount', unservicedJobCount))
        .toString();
  }
}

class AdminStatisticsOverviewResponseBuilder
    implements
        Builder<AdminStatisticsOverviewResponse,
            AdminStatisticsOverviewResponseBuilder> {
  _$AdminStatisticsOverviewResponse? _$v;

  int? _jobCount;
  int? get jobCount => _$this._jobCount;
  set jobCount(int? jobCount) => _$this._jobCount = jobCount;

  int? _plannedJobCount;
  int? get plannedJobCount => _$this._plannedJobCount;
  set plannedJobCount(int? plannedJobCount) =>
      _$this._plannedJobCount = plannedJobCount;

  int? _comingJobCount;
  int? get comingJobCount => _$this._comingJobCount;
  set comingJobCount(int? comingJobCount) =>
      _$this._comingJobCount = comingJobCount;

  int? _ongoingJobCount;
  int? get ongoingJobCount => _$this._ongoingJobCount;
  set ongoingJobCount(int? ongoingJobCount) =>
      _$this._ongoingJobCount = ongoingJobCount;

  int? _completedJobCount;
  int? get completedJobCount => _$this._completedJobCount;
  set completedJobCount(int? completedJobCount) =>
      _$this._completedJobCount = completedJobCount;

  int? _unservicedJobCount;
  int? get unservicedJobCount => _$this._unservicedJobCount;
  set unservicedJobCount(int? unservicedJobCount) =>
      _$this._unservicedJobCount = unservicedJobCount;

  AdminStatisticsOverviewResponseBuilder();

  AdminStatisticsOverviewResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobCount = $v.jobCount;
      _plannedJobCount = $v.plannedJobCount;
      _comingJobCount = $v.comingJobCount;
      _ongoingJobCount = $v.ongoingJobCount;
      _completedJobCount = $v.completedJobCount;
      _unservicedJobCount = $v.unservicedJobCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminStatisticsOverviewResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminStatisticsOverviewResponse;
  }

  @override
  void update(void Function(AdminStatisticsOverviewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminStatisticsOverviewResponse build() => _build();

  _$AdminStatisticsOverviewResponse _build() {
    final _$result = _$v ??
        new _$AdminStatisticsOverviewResponse._(
            jobCount: BuiltValueNullFieldError.checkNotNull(
                jobCount, r'AdminStatisticsOverviewResponse', 'jobCount'),
            plannedJobCount: BuiltValueNullFieldError.checkNotNull(
                plannedJobCount, r'AdminStatisticsOverviewResponse', 'plannedJobCount'),
            comingJobCount: BuiltValueNullFieldError.checkNotNull(
                comingJobCount, r'AdminStatisticsOverviewResponse', 'comingJobCount'),
            ongoingJobCount: BuiltValueNullFieldError.checkNotNull(
                ongoingJobCount, r'AdminStatisticsOverviewResponse', 'ongoingJobCount'),
            completedJobCount: BuiltValueNullFieldError.checkNotNull(
                completedJobCount,
                r'AdminStatisticsOverviewResponse',
                'completedJobCount'),
            unservicedJobCount: BuiltValueNullFieldError.checkNotNull(
                unservicedJobCount,
                r'AdminStatisticsOverviewResponse',
                'unservicedJobCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
