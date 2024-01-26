// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeneralStatistics> _$generalStatisticsSerializer =
    new _$GeneralStatisticsSerializer();

class _$GeneralStatisticsSerializer
    implements StructuredSerializer<GeneralStatistics> {
  @override
  final Iterable<Type> types = const [GeneralStatistics, _$GeneralStatistics];
  @override
  final String wireName = 'GeneralStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, GeneralStatistics object,
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
          specifiedType: const FullType(
              BuiltMap, const [const FullType(int), const FullType(int)])),
    ];

    return result;
  }

  @override
  GeneralStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeneralStatisticsBuilder();

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
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(int), const FullType(int)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$GeneralStatistics extends GeneralStatistics {
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
  final BuiltMap<int, int> dailyHours;

  factory _$GeneralStatistics(
          [void Function(GeneralStatisticsBuilder)? updates]) =>
      (new GeneralStatisticsBuilder()..update(updates))._build();

  _$GeneralStatistics._(
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
        weekStart, r'GeneralStatistics', 'weekStart');
    BuiltValueNullFieldError.checkNotNull(
        weekEnd, r'GeneralStatistics', 'weekEnd');
    BuiltValueNullFieldError.checkNotNull(
        totalWorkedHours, r'GeneralStatistics', 'totalWorkedHours');
    BuiltValueNullFieldError.checkNotNull(
        totalUpcomingHours, r'GeneralStatistics', 'totalUpcomingHours');
    BuiltValueNullFieldError.checkNotNull(
        averageHours, r'GeneralStatistics', 'averageHours');
    BuiltValueNullFieldError.checkNotNull(
        completedJobsCount, r'GeneralStatistics', 'completedJobsCount');
    BuiltValueNullFieldError.checkNotNull(
        upcomingJobsCount, r'GeneralStatistics', 'upcomingJobsCount');
    BuiltValueNullFieldError.checkNotNull(
        dailyHours, r'GeneralStatistics', 'dailyHours');
  }

  @override
  GeneralStatistics rebuild(void Function(GeneralStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralStatisticsBuilder toBuilder() =>
      new GeneralStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralStatistics &&
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
    return (newBuiltValueToStringHelper(r'GeneralStatistics')
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

class GeneralStatisticsBuilder
    implements Builder<GeneralStatistics, GeneralStatisticsBuilder> {
  _$GeneralStatistics? _$v;

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

  MapBuilder<int, int>? _dailyHours;
  MapBuilder<int, int> get dailyHours =>
      _$this._dailyHours ??= new MapBuilder<int, int>();
  set dailyHours(MapBuilder<int, int>? dailyHours) =>
      _$this._dailyHours = dailyHours;

  GeneralStatisticsBuilder();

  GeneralStatisticsBuilder get _$this {
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
  void replace(GeneralStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneralStatistics;
  }

  @override
  void update(void Function(GeneralStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneralStatistics build() => _build();

  _$GeneralStatistics _build() {
    _$GeneralStatistics _$result;
    try {
      _$result = _$v ??
          new _$GeneralStatistics._(
              weekStart: BuiltValueNullFieldError.checkNotNull(
                  weekStart, r'GeneralStatistics', 'weekStart'),
              weekEnd: BuiltValueNullFieldError.checkNotNull(
                  weekEnd, r'GeneralStatistics', 'weekEnd'),
              totalWorkedHours: BuiltValueNullFieldError.checkNotNull(
                  totalWorkedHours, r'GeneralStatistics', 'totalWorkedHours'),
              totalUpcomingHours: BuiltValueNullFieldError.checkNotNull(
                  totalUpcomingHours, r'GeneralStatistics', 'totalUpcomingHours'),
              averageHours: BuiltValueNullFieldError.checkNotNull(
                  averageHours, r'GeneralStatistics', 'averageHours'),
              completedJobsCount: BuiltValueNullFieldError.checkNotNull(
                  completedJobsCount,
                  r'GeneralStatistics',
                  'completedJobsCount'),
              upcomingJobsCount: BuiltValueNullFieldError.checkNotNull(
                  upcomingJobsCount, r'GeneralStatistics', 'upcomingJobsCount'),
              dailyHours: dailyHours.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dailyHours';
        dailyHours.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GeneralStatistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
