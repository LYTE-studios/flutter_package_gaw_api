// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yearly_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YearlyStatistics> _$yearlyStatisticsSerializer =
    new _$YearlyStatisticsSerializer();

class _$YearlyStatisticsSerializer
    implements StructuredSerializer<YearlyStatistics> {
  @override
  final Iterable<Type> types = const [YearlyStatistics, _$YearlyStatistics];
  @override
  final String wireName = 'YearlyStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, YearlyStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'monthly_stats',
      serializers.serialize(object.monthlyStats,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(MonthlyStatistics)
          ])),
    ];

    return result;
  }

  @override
  YearlyStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YearlyStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'monthly_stats':
          result.monthlyStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(MonthlyStatistics)
              ]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$YearlyStatistics extends YearlyStatistics {
  @override
  final int year;
  @override
  final BuiltMap<String, MonthlyStatistics> monthlyStats;

  factory _$YearlyStatistics(
          [void Function(YearlyStatisticsBuilder)? updates]) =>
      (new YearlyStatisticsBuilder()..update(updates))._build();

  _$YearlyStatistics._({required this.year, required this.monthlyStats})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(year, r'YearlyStatistics', 'year');
    BuiltValueNullFieldError.checkNotNull(
        monthlyStats, r'YearlyStatistics', 'monthlyStats');
  }

  @override
  YearlyStatistics rebuild(void Function(YearlyStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YearlyStatisticsBuilder toBuilder() =>
      new YearlyStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YearlyStatistics &&
        year == other.year &&
        monthlyStats == other.monthlyStats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, monthlyStats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YearlyStatistics')
          ..add('year', year)
          ..add('monthlyStats', monthlyStats))
        .toString();
  }
}

class YearlyStatisticsBuilder
    implements Builder<YearlyStatistics, YearlyStatisticsBuilder> {
  _$YearlyStatistics? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  MapBuilder<String, MonthlyStatistics>? _monthlyStats;
  MapBuilder<String, MonthlyStatistics> get monthlyStats =>
      _$this._monthlyStats ??= new MapBuilder<String, MonthlyStatistics>();
  set monthlyStats(MapBuilder<String, MonthlyStatistics>? monthlyStats) =>
      _$this._monthlyStats = monthlyStats;

  YearlyStatisticsBuilder();

  YearlyStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _monthlyStats = $v.monthlyStats.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YearlyStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YearlyStatistics;
  }

  @override
  void update(void Function(YearlyStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YearlyStatistics build() => _build();

  _$YearlyStatistics _build() {
    _$YearlyStatistics _$result;
    try {
      _$result = _$v ??
          new _$YearlyStatistics._(
              year: BuiltValueNullFieldError.checkNotNull(
                  year, r'YearlyStatistics', 'year'),
              monthlyStats: monthlyStats.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'monthlyStats';
        monthlyStats.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'YearlyStatistics', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
