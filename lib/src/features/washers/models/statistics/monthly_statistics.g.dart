// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonthlyStatistics> _$monthlyStatisticsSerializer =
    new _$MonthlyStatisticsSerializer();

class _$MonthlyStatisticsSerializer
    implements StructuredSerializer<MonthlyStatistics> {
  @override
  final Iterable<Type> types = const [MonthlyStatistics, _$MonthlyStatistics];
  @override
  final String wireName = 'MonthlyStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, MonthlyStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
    ];

    return result;
  }

  @override
  MonthlyStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonthlyStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
      }
    }

    return result.build();
  }
}

class _$MonthlyStatistics extends MonthlyStatistics {
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

  factory _$MonthlyStatistics(
          [void Function(MonthlyStatisticsBuilder)? updates]) =>
      (new MonthlyStatisticsBuilder()..update(updates))._build();

  _$MonthlyStatistics._(
      {required this.totalWorkedHours,
      required this.totalUpcomingHours,
      required this.averageHours,
      required this.completedJobsCount,
      required this.upcomingJobsCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalWorkedHours, r'MonthlyStatistics', 'totalWorkedHours');
    BuiltValueNullFieldError.checkNotNull(
        totalUpcomingHours, r'MonthlyStatistics', 'totalUpcomingHours');
    BuiltValueNullFieldError.checkNotNull(
        averageHours, r'MonthlyStatistics', 'averageHours');
    BuiltValueNullFieldError.checkNotNull(
        completedJobsCount, r'MonthlyStatistics', 'completedJobsCount');
    BuiltValueNullFieldError.checkNotNull(
        upcomingJobsCount, r'MonthlyStatistics', 'upcomingJobsCount');
  }

  @override
  MonthlyStatistics rebuild(void Function(MonthlyStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthlyStatisticsBuilder toBuilder() =>
      new MonthlyStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthlyStatistics &&
        totalWorkedHours == other.totalWorkedHours &&
        totalUpcomingHours == other.totalUpcomingHours &&
        averageHours == other.averageHours &&
        completedJobsCount == other.completedJobsCount &&
        upcomingJobsCount == other.upcomingJobsCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalWorkedHours.hashCode);
    _$hash = $jc(_$hash, totalUpcomingHours.hashCode);
    _$hash = $jc(_$hash, averageHours.hashCode);
    _$hash = $jc(_$hash, completedJobsCount.hashCode);
    _$hash = $jc(_$hash, upcomingJobsCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonthlyStatistics')
          ..add('totalWorkedHours', totalWorkedHours)
          ..add('totalUpcomingHours', totalUpcomingHours)
          ..add('averageHours', averageHours)
          ..add('completedJobsCount', completedJobsCount)
          ..add('upcomingJobsCount', upcomingJobsCount))
        .toString();
  }
}

class MonthlyStatisticsBuilder
    implements Builder<MonthlyStatistics, MonthlyStatisticsBuilder> {
  _$MonthlyStatistics? _$v;

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

  MonthlyStatisticsBuilder();

  MonthlyStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalWorkedHours = $v.totalWorkedHours;
      _totalUpcomingHours = $v.totalUpcomingHours;
      _averageHours = $v.averageHours;
      _completedJobsCount = $v.completedJobsCount;
      _upcomingJobsCount = $v.upcomingJobsCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthlyStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonthlyStatistics;
  }

  @override
  void update(void Function(MonthlyStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonthlyStatistics build() => _build();

  _$MonthlyStatistics _build() {
    final _$result = _$v ??
        new _$MonthlyStatistics._(
            totalWorkedHours: BuiltValueNullFieldError.checkNotNull(
                totalWorkedHours, r'MonthlyStatistics', 'totalWorkedHours'),
            totalUpcomingHours: BuiltValueNullFieldError.checkNotNull(
                totalUpcomingHours, r'MonthlyStatistics', 'totalUpcomingHours'),
            averageHours: BuiltValueNullFieldError.checkNotNull(
                averageHours, r'MonthlyStatistics', 'averageHours'),
            completedJobsCount: BuiltValueNullFieldError.checkNotNull(
                completedJobsCount, r'MonthlyStatistics', 'completedJobsCount'),
            upcomingJobsCount: BuiltValueNullFieldError.checkNotNull(
                upcomingJobsCount, r'MonthlyStatistics', 'upcomingJobsCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
