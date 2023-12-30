// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weighted_double.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeightedDouble> _$weightedDoubleSerializer =
    new _$WeightedDoubleSerializer();

class _$WeightedDoubleSerializer
    implements StructuredSerializer<WeightedDouble> {
  @override
  final Iterable<Type> types = const [WeightedDouble, _$WeightedDouble];
  @override
  final String wireName = 'WeightedDouble';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeightedDouble object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'weight',
      serializers.serialize(object.weight, specifiedType: const FullType(int)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  WeightedDouble deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeightedDoubleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$WeightedDouble extends WeightedDouble {
  @override
  final int weight;
  @override
  final double value;

  factory _$WeightedDouble([void Function(WeightedDoubleBuilder)? updates]) =>
      (new WeightedDoubleBuilder()..update(updates))._build();

  _$WeightedDouble._({required this.weight, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(weight, r'WeightedDouble', 'weight');
    BuiltValueNullFieldError.checkNotNull(value, r'WeightedDouble', 'value');
  }

  @override
  WeightedDouble rebuild(void Function(WeightedDoubleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeightedDoubleBuilder toBuilder() =>
      new WeightedDoubleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeightedDouble &&
        weight == other.weight &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeightedDouble')
          ..add('weight', weight)
          ..add('value', value))
        .toString();
  }
}

class WeightedDoubleBuilder
    implements Builder<WeightedDouble, WeightedDoubleBuilder> {
  _$WeightedDouble? _$v;

  int? _weight;
  int? get weight => _$this._weight;
  set weight(int? weight) => _$this._weight = weight;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  WeightedDoubleBuilder();

  WeightedDoubleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weight = $v.weight;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeightedDouble other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeightedDouble;
  }

  @override
  void update(void Function(WeightedDoubleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeightedDouble build() => _build();

  _$WeightedDouble _build() {
    final _$result = _$v ??
        new _$WeightedDouble._(
            weight: BuiltValueNullFieldError.checkNotNull(
                weight, r'WeightedDouble', 'weight'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'WeightedDouble', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
