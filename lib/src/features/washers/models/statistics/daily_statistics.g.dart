// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_statistics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DailyStatistics> _$dailyStatisticsSerializer =
    new _$DailyStatisticsSerializer();

class _$DailyStatisticsSerializer
    implements StructuredSerializer<DailyStatistics> {
  @override
  final Iterable<Type> types = const [DailyStatistics, _$DailyStatistics];
  @override
  final String wireName = 'DailyStatistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, DailyStatistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hours_worked',
      serializers.serialize(object.hoursWorked,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  DailyStatistics deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyStatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hours_worked':
          result.hoursWorked = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyStatistics extends DailyStatistics {
  @override
  final double hoursWorked;

  factory _$DailyStatistics([void Function(DailyStatisticsBuilder)? updates]) =>
      (new DailyStatisticsBuilder()..update(updates))._build();

  _$DailyStatistics._({required this.hoursWorked}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hoursWorked, r'DailyStatistics', 'hoursWorked');
  }

  @override
  DailyStatistics rebuild(void Function(DailyStatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyStatisticsBuilder toBuilder() =>
      new DailyStatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyStatistics && hoursWorked == other.hoursWorked;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hoursWorked.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyStatistics')
          ..add('hoursWorked', hoursWorked))
        .toString();
  }
}

class DailyStatisticsBuilder
    implements Builder<DailyStatistics, DailyStatisticsBuilder> {
  _$DailyStatistics? _$v;

  double? _hoursWorked;
  double? get hoursWorked => _$this._hoursWorked;
  set hoursWorked(double? hoursWorked) => _$this._hoursWorked = hoursWorked;

  DailyStatisticsBuilder();

  DailyStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hoursWorked = $v.hoursWorked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyStatistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DailyStatistics;
  }

  @override
  void update(void Function(DailyStatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DailyStatistics build() => _build();

  _$DailyStatistics _build() {
    final _$result = _$v ??
        new _$DailyStatistics._(
            hoursWorked: BuiltValueNullFieldError.checkNotNull(
                hoursWorked, r'DailyStatistics', 'hoursWorked'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
