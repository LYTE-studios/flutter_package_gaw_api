// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeeklyStatistics> _$weeklyStatisticsSerializer =
    new _$WeeklyStatisticsSerializer();

class _$WeeklyStatisticsSerializer
    implements StructuredSerializer<WeeklyStatistics> {
  @override
  final Iterable<Type> types = const [WeeklyStatistics, _$WeeklyStatistics];
  @override
  final String wireName = 'WeeklyStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeeklyStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'week_start',
      serializers.serialize(object.weekStart,
          specifiedType: const FullType(String)),
      'week_end',
      serializers.serialize(object.weekEnd,
          specifiedType: const FullType(String)),
      'total_worked_hours',
      serializers.serialize(object.totalWorkedHours,
          specifiedType: const FullType(double)),
      'total_upcoming_hours',
      serializers.serialize(object.totalUpcomingHours,
          specifiedType: const FullType(double)),
      'average_hours',
      serializers.serialize(object.averageHours,
          specifiedType: const FullType(double)),
      'completed_jobs_count',
      serializers.serialize(object.completedJobsCount,
          specifiedType: const FullType(int)),
      'upcoming_jobs_count',
      serializers.serialize(object.upcomingJobsCount,
          specifiedType: const FullType(int)),
      'daily_hours',
      serializers.serialize(object.dailyHours,
          specifiedType: const FullType(DailyStatistics)),
    ];

    return result;
  }

  @override
  WeeklyStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeeklyStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'week_start':
          result.weekStart = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'week_end':
          result.weekEnd = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total_worked_hours':
          result.totalWorkedHours = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'total_upcoming_hours':
          result.totalUpcomingHours = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'average_hours':
          result.averageHours = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'completed_jobs_count':
          result.completedJobsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'upcoming_jobs_count':
          result.upcomingJobsCount = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'daily_hours':
          result.dailyHours.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DailyStatistics))!
              as DailyStatistics);
          break;
      }
    }

    return result.build();
  }
}

class _$WeeklyStatistics extends WeeklyStatistics {
  @override
  final String weekStart;
  @override
  final String weekEnd;
  @override
  final double totalWorkedHours;
  @override
  final double totalUpcomingHours;
  @override
  final double averageHours;
  @override
  final int completedJobsCount;
  @override
  final int upcomingJobsCount;
  @override
  final DailyStatistics dailyHours;

  factory _$WeeklyStatistics(
          [void Function(WeeklyStatisticsBuilder)? updates]) =>
      (new WeeklyStatisticsBuilder()..update(updates))._build();

  _$WeeklyStatistics._(
      {required this.weekStart,
      required this.weekEnd,
      required this.totalWorkedHours,
      required this.totalUpcomingHours,
      required this.averageHours,
      required this.completedJobsCount,
      required this.upcomingJobsCount,
      required this.dailyHours})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weekStart, r'WeeklyStatistics', 'weekStart');
    BuiltValueNullFieldError.checkNotNull(
        weekEnd, r'WeeklyStatistics', 'weekEnd');
    BuiltValueNullFieldError.checkNotNull(
        totalWorkedHours, r'WeeklyStatistics', 'totalWorkedHours');
    BuiltValueNullFieldError.checkNotNull(
        totalUpcomingHours, r'WeeklyStatistics', 'totalUpcomingHours');
    BuiltValueNullFieldError.checkNotNull(
        averageHours, r'WeeklyStatistics', 'averageHours');
    BuiltValueNullFieldError.checkNotNull(
        completedJobsCount, r'WeeklyStatistics', 'completedJobsCount');
    BuiltValueNullFieldError.checkNotNull(
        upcomingJobsCount, r'WeeklyStatistics', 'upcomingJobsCount');
    BuiltValueNullFieldError.checkNotNull(
        dailyHours, r'WeeklyStatistics', 'dailyHours');
  }

  @override
  WeeklyStatistics rebuild(void Function(WeeklyStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeeklyStatisticsBuilder toBuilder() =>
      new WeeklyStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeeklyStatistics &&
        weekStart == other.weekStart &&
        weekEnd == other.weekEnd &&
        totalWorkedHours == other.totalWorkedHours &&
        totalUpcomingHours == other.totalUpcomingHours &&
        averageHours == other.averageHours &&
        completedJobsCount == other.completedJobsCount &&
        upcomingJobsCount == other.upcomingJobsCount &&
        dailyHours == other.dailyHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weekStart.hashCode);
    _$hash = $jc(_$hash, weekEnd.hashCode);
    _$hash = $jc(_$hash, totalWorkedHours.hashCode);
    _$hash = $jc(_$hash, totalUpcomingHours.hashCode);
    _$hash = $jc(_$hash, averageHours.hashCode);
    _$hash = $jc(_$hash, completedJobsCount.hashCode);
    _$hash = $jc(_$hash, upcomingJobsCount.hashCode);
    _$hash = $jc(_$hash, dailyHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeeklyStatistics')
          ..add('weekStart', weekStart)
          ..add('weekEnd', weekEnd)
          ..add('totalWorkedHours', totalWorkedHours)
          ..add('totalUpcomingHours', totalUpcomingHours)
          ..add('averageHours', averageHours)
          ..add('completedJobsCount', completedJobsCount)
          ..add('upcomingJobsCount', upcomingJobsCount)
          ..add('dailyHours', dailyHours))
        .toString();
  }
}

class WeeklyStatisticsBuilder
    implements Builder<WeeklyStatistics, WeeklyStatisticsBuilder> {
  _$WeeklyStatistics? _$v;

  String? _weekStart;
  String? get weekStart => _$this._weekStart;
  set weekStart(String? weekStart) => _$this._weekStart = weekStart;

  String? _weekEnd;
  String? get weekEnd => _$this._weekEnd;
  set weekEnd(String? weekEnd) => _$this._weekEnd = weekEnd;

  double? _totalWorkedHours;
  double? get totalWorkedHours => _$this._totalWorkedHours;
  set totalWorkedHours(double? totalWorkedHours) =>
      _$this._totalWorkedHours = totalWorkedHours;

  double? _totalUpcomingHours;
  double? get totalUpcomingHours => _$this._totalUpcomingHours;
  set totalUpcomingHours(double? totalUpcomingHours) =>
      _$this._totalUpcomingHours = totalUpcomingHours;

  double? _averageHours;
  double? get averageHours => _$this._averageHours;
  set averageHours(double? averageHours) => _$this._averageHours = averageHours;

  int? _completedJobsCount;
  int? get completedJobsCount => _$this._completedJobsCount;
  set completedJobsCount(int? completedJobsCount) =>
      _$this._completedJobsCount = completedJobsCount;

  int? _upcomingJobsCount;
  int? get upcomingJobsCount => _$this._upcomingJobsCount;
  set upcomingJobsCount(int? upcomingJobsCount) =>
      _$this._upcomingJobsCount = upcomingJobsCount;

  DailyStatisticsBuilder? _dailyHours;
  DailyStatisticsBuilder get dailyHours =>
      _$this._dailyHours ??= new DailyStatisticsBuilder();
  set dailyHours(DailyStatisticsBuilder? dailyHours) =>
      _$this._dailyHours = dailyHours;

  WeeklyStatisticsBuilder();

  WeeklyStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weekStart = $v.weekStart;
      _weekEnd = $v.weekEnd;
      _totalWorkedHours = $v.totalWorkedHours;
      _totalUpcomingHours = $v.totalUpcomingHours;
      _averageHours = $v.averageHours;
      _completedJobsCount = $v.completedJobsCount;
      _upcomingJobsCount = $v.upcomingJobsCount;
      _dailyHours = $v.dailyHours.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeeklyStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeeklyStatistics;
  }

  @override
  void update(void Function(WeeklyStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeeklyStatistics build() => _build();

  _$WeeklyStatistics _build() {
    _$WeeklyStatistics _$result;
    try {
      _$result = _$v ??
          new _$WeeklyStatistics._(
              weekStart: BuiltValueNullFieldError.checkNotNull(
                  weekStart, r'WeeklyStatistics', 'weekStart'),
              weekEnd: BuiltValueNullFieldError.checkNotNull(
                  weekEnd, r'WeeklyStatistics', 'weekEnd'),
              totalWorkedHours: BuiltValueNullFieldError.checkNotNull(
                  totalWorkedHours, r'WeeklyStatistics', 'totalWorkedHours'),
              totalUpcomingHours: BuiltValueNullFieldError.checkNotNull(
                  totalUpcomingHours, r'WeeklyStatistics', 'totalUpcomingHours'),
              averageHours: BuiltValueNullFieldError.checkNotNull(
                  averageHours, r'WeeklyStatistics', 'averageHours'),
              completedJobsCount: BuiltValueNullFieldError.checkNotNull(
                  completedJobsCount,
                  r'WeeklyStatistics',
                  'completedJobsCount'),
              upcomingJobsCount: BuiltValueNullFieldError.checkNotNull(
                  upcomingJobsCount, r'WeeklyStatistics', 'upcomingJobsCount'),
              dailyHours: dailyHours.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dailyHours';
        dailyHours.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeeklyStatistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
