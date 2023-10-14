// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'washer_chart.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WasherChart> _$washerChartSerializer = new _$WasherChartSerializer();

class _$WasherChartSerializer implements StructuredSerializer<WasherChart> {
  @override
  final Iterable<Type> types = const [WasherChart, _$WasherChart];
  @override
  final String wireName = 'WasherChart';

  @override
  Iterable<Object?> serialize(Serializers serializers, WasherChart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'total_hours',
      serializers.serialize(object.totalHours,
          specifiedType: const FullType(double)),
      'total_change',
      serializers.serialize(object.totalChange,
          specifiedType: const FullType(double)),
      'chart',
      serializers.serialize(object.chart,
          specifiedType:
              const FullType(List, const [const FullType(WeightedDouble)])),
    ];

    return result;
  }

  @override
  WasherChart deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WasherChartBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'total_hours':
          result.totalHours = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'total_change':
          result.totalChange = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'chart':
          result.chart = serializers.deserialize(value,
                  specifiedType: const FullType(
                      List, const [const FullType(WeightedDouble)]))!
              as List<WeightedDouble>;
          break;
      }
    }

    return result.build();
  }
}

class _$WasherChart extends WasherChart {
  @override
  final double totalHours;
  @override
  final double totalChange;
  @override
  final List<WeightedDouble> chart;

  factory _$WasherChart([void Function(WasherChartBuilder)? updates]) =>
      (new WasherChartBuilder()..update(updates))._build();

  _$WasherChart._(
      {required this.totalHours,
      required this.totalChange,
      required this.chart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalHours, r'WasherChart', 'totalHours');
    BuiltValueNullFieldError.checkNotNull(
        totalChange, r'WasherChart', 'totalChange');
    BuiltValueNullFieldError.checkNotNull(chart, r'WasherChart', 'chart');
  }

  @override
  WasherChart rebuild(void Function(WasherChartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WasherChartBuilder toBuilder() => new WasherChartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WasherChart &&
        totalHours == other.totalHours &&
        totalChange == other.totalChange &&
        chart == other.chart;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalHours.hashCode);
    _$hash = $jc(_$hash, totalChange.hashCode);
    _$hash = $jc(_$hash, chart.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WasherChart')
          ..add('totalHours', totalHours)
          ..add('totalChange', totalChange)
          ..add('chart', chart))
        .toString();
  }
}

class WasherChartBuilder implements Builder<WasherChart, WasherChartBuilder> {
  _$WasherChart? _$v;

  double? _totalHours;
  double? get totalHours => _$this._totalHours;
  set totalHours(double? totalHours) => _$this._totalHours = totalHours;

  double? _totalChange;
  double? get totalChange => _$this._totalChange;
  set totalChange(double? totalChange) => _$this._totalChange = totalChange;

  List<WeightedDouble>? _chart;
  List<WeightedDouble>? get chart => _$this._chart;
  set chart(List<WeightedDouble>? chart) => _$this._chart = chart;

  WasherChartBuilder();

  WasherChartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalHours = $v.totalHours;
      _totalChange = $v.totalChange;
      _chart = $v.chart;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WasherChart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WasherChart;
  }

  @override
  void update(void Function(WasherChartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WasherChart build() => _build();

  _$WasherChart _build() {
    final _$result = _$v ??
        new _$WasherChart._(
            totalHours: BuiltValueNullFieldError.checkNotNull(
                totalHours, r'WasherChart', 'totalHours'),
            totalChange: BuiltValueNullFieldError.checkNotNull(
                totalChange, r'WasherChart', 'totalChange'),
            chart: BuiltValueNullFieldError.checkNotNull(
                chart, r'WasherChart', 'chart'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
