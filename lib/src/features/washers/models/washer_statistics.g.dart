// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'washer_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WasherStatistics> _$washerStatisticsSerializer =
    new _$WasherStatisticsSerializer();

class _$WasherStatisticsSerializer
    implements StructuredSerializer<WasherStatistics> {
  @override
  final Iterable<Type> types = const [WasherStatistics, _$WasherStatistics];
  @override
  final String wireName = 'WasherStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, WasherStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'jobs_done',
      serializers.serialize(object.jobsDone,
          specifiedType: const FullType(int)),
      'jobs_scheduled',
      serializers.serialize(object.jobsScheduled,
          specifiedType: const FullType(int)),
      'average_hours',
      serializers.serialize(object.averageHours,
          specifiedType: const FullType(double)),
      'average_change',
      serializers.serialize(object.averageChange,
          specifiedType: const FullType(double)),
      'timespan',
      serializers.serialize(object.timespan,
          specifiedType: const FullType(Timespan)),
      'charts',
      serializers.serialize(object.charts,
          specifiedType:
              const FullType(List, const [const FullType(WasherChart)])),
    ];

    return result;
  }

  @override
  WasherStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WasherStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobs_done':
          result.jobsDone = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'jobs_scheduled':
          result.jobsScheduled = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'average_hours':
          result.averageHours = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'average_change':
          result.averageChange = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'timespan':
          result.timespan = serializers.deserialize(value,
              specifiedType: const FullType(Timespan))! as Timespan;
          break;
        case 'charts':
          result.charts = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(WasherChart)]))!
              as List<WasherChart>;
          break;
      }
    }

    return result.build();
  }
}

class _$WasherStatistics extends WasherStatistics {
  @override
  final int jobsDone;
  @override
  final int jobsScheduled;
  @override
  final double averageHours;
  @override
  final double averageChange;
  @override
  final Timespan timespan;
  @override
  final List<WasherChart> charts;

  factory _$WasherStatistics(
          [void Function(WasherStatisticsBuilder)? updates]) =>
      (new WasherStatisticsBuilder()..update(updates))._build();

  _$WasherStatistics._(
      {required this.jobsDone,
      required this.jobsScheduled,
      required this.averageHours,
      required this.averageChange,
      required this.timespan,
      required this.charts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobsDone, r'WasherStatistics', 'jobsDone');
    BuiltValueNullFieldError.checkNotNull(
        jobsScheduled, r'WasherStatistics', 'jobsScheduled');
    BuiltValueNullFieldError.checkNotNull(
        averageHours, r'WasherStatistics', 'averageHours');
    BuiltValueNullFieldError.checkNotNull(
        averageChange, r'WasherStatistics', 'averageChange');
    BuiltValueNullFieldError.checkNotNull(
        timespan, r'WasherStatistics', 'timespan');
    BuiltValueNullFieldError.checkNotNull(
        charts, r'WasherStatistics', 'charts');
  }

  @override
  WasherStatistics rebuild(void Function(WasherStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WasherStatisticsBuilder toBuilder() =>
      new WasherStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WasherStatistics &&
        jobsDone == other.jobsDone &&
        jobsScheduled == other.jobsScheduled &&
        averageHours == other.averageHours &&
        averageChange == other.averageChange &&
        timespan == other.timespan &&
        charts == other.charts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobsDone.hashCode);
    _$hash = $jc(_$hash, jobsScheduled.hashCode);
    _$hash = $jc(_$hash, averageHours.hashCode);
    _$hash = $jc(_$hash, averageChange.hashCode);
    _$hash = $jc(_$hash, timespan.hashCode);
    _$hash = $jc(_$hash, charts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WasherStatistics')
          ..add('jobsDone', jobsDone)
          ..add('jobsScheduled', jobsScheduled)
          ..add('averageHours', averageHours)
          ..add('averageChange', averageChange)
          ..add('timespan', timespan)
          ..add('charts', charts))
        .toString();
  }
}

class WasherStatisticsBuilder
    implements Builder<WasherStatistics, WasherStatisticsBuilder> {
  _$WasherStatistics? _$v;

  int? _jobsDone;
  int? get jobsDone => _$this._jobsDone;
  set jobsDone(int? jobsDone) => _$this._jobsDone = jobsDone;

  int? _jobsScheduled;
  int? get jobsScheduled => _$this._jobsScheduled;
  set jobsScheduled(int? jobsScheduled) =>
      _$this._jobsScheduled = jobsScheduled;

  double? _averageHours;
  double? get averageHours => _$this._averageHours;
  set averageHours(double? averageHours) => _$this._averageHours = averageHours;

  double? _averageChange;
  double? get averageChange => _$this._averageChange;
  set averageChange(double? averageChange) =>
      _$this._averageChange = averageChange;

  Timespan? _timespan;
  Timespan? get timespan => _$this._timespan;
  set timespan(Timespan? timespan) => _$this._timespan = timespan;

  List<WasherChart>? _charts;
  List<WasherChart>? get charts => _$this._charts;
  set charts(List<WasherChart>? charts) => _$this._charts = charts;

  WasherStatisticsBuilder();

  WasherStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobsDone = $v.jobsDone;
      _jobsScheduled = $v.jobsScheduled;
      _averageHours = $v.averageHours;
      _averageChange = $v.averageChange;
      _timespan = $v.timespan;
      _charts = $v.charts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WasherStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WasherStatistics;
  }

  @override
  void update(void Function(WasherStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WasherStatistics build() => _build();

  _$WasherStatistics _build() {
    final _$result = _$v ??
        new _$WasherStatistics._(
            jobsDone: BuiltValueNullFieldError.checkNotNull(
                jobsDone, r'WasherStatistics', 'jobsDone'),
            jobsScheduled: BuiltValueNullFieldError.checkNotNull(
                jobsScheduled, r'WasherStatistics', 'jobsScheduled'),
            averageHours: BuiltValueNullFieldError.checkNotNull(
                averageHours, r'WasherStatistics', 'averageHours'),
            averageChange: BuiltValueNullFieldError.checkNotNull(
                averageChange, r'WasherStatistics', 'averageChange'),
            timespan: BuiltValueNullFieldError.checkNotNull(
                timespan, r'WasherStatistics', 'timespan'),
            charts: BuiltValueNullFieldError.checkNotNull(
                charts, r'WasherStatistics', 'charts'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
