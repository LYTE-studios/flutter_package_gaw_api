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
      'average_hours',
      serializers.serialize(object.averageHours,
          specifiedType: const FullType(double)),
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
        case 'average_hours':
          result.averageHours = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MonthlyStatistics extends MonthlyStatistics {
  @override
  final double averageHours;

  factory _$MonthlyStatistics(
          [void Function(MonthlyStatisticsBuilder)? updates]) =>
      (new MonthlyStatisticsBuilder()..update(updates))._build();

  _$MonthlyStatistics._({required this.averageHours}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        averageHours, r'MonthlyStatistics', 'averageHours');
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
    return other is MonthlyStatistics && averageHours == other.averageHours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, averageHours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonthlyStatistics')
          ..add('averageHours', averageHours))
        .toString();
  }
}

class MonthlyStatisticsBuilder
    implements Builder<MonthlyStatistics, MonthlyStatisticsBuilder> {
  _$MonthlyStatistics? _$v;

  double? _averageHours;
  double? get averageHours => _$this._averageHours;
  set averageHours(double? averageHours) => _$this._averageHours = averageHours;

  MonthlyStatisticsBuilder();

  MonthlyStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _averageHours = $v.averageHours;
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
            averageHours: BuiltValueNullFieldError.checkNotNull(
                averageHours, r'MonthlyStatistics', 'averageHours'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
