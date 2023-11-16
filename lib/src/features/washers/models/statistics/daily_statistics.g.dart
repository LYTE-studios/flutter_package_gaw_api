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
      'Mon',
      serializers.serialize(object.monday, specifiedType: const FullType(int)),
      'Tue',
      serializers.serialize(object.tuesday, specifiedType: const FullType(int)),
      'Wed',
      serializers.serialize(object.wednesday,
          specifiedType: const FullType(int)),
      'Thu',
      serializers.serialize(object.thursday,
          specifiedType: const FullType(int)),
      'Fri',
      serializers.serialize(object.friday, specifiedType: const FullType(int)),
      'Sat',
      serializers.serialize(object.saturday,
          specifiedType: const FullType(int)),
      'Sun',
      serializers.serialize(object.sunday, specifiedType: const FullType(int)),
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
        case 'Mon':
          result.monday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'Tue':
          result.tuesday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'Wed':
          result.wednesday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'Thu':
          result.thursday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'Fri':
          result.friday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'Sat':
          result.saturday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'Sun':
          result.sunday = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyStatistics extends DailyStatistics {
  @override
  final int monday;
  @override
  final int tuesday;
  @override
  final int wednesday;
  @override
  final int thursday;
  @override
  final int friday;
  @override
  final int saturday;
  @override
  final int sunday;

  factory _$DailyStatistics([void Function(DailyStatisticsBuilder)? updates]) =>
      (new DailyStatisticsBuilder()..update(updates))._build();

  _$DailyStatistics._(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(monday, r'DailyStatistics', 'monday');
    BuiltValueNullFieldError.checkNotNull(
        tuesday, r'DailyStatistics', 'tuesday');
    BuiltValueNullFieldError.checkNotNull(
        wednesday, r'DailyStatistics', 'wednesday');
    BuiltValueNullFieldError.checkNotNull(
        thursday, r'DailyStatistics', 'thursday');
    BuiltValueNullFieldError.checkNotNull(friday, r'DailyStatistics', 'friday');
    BuiltValueNullFieldError.checkNotNull(
        saturday, r'DailyStatistics', 'saturday');
    BuiltValueNullFieldError.checkNotNull(sunday, r'DailyStatistics', 'sunday');
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
    return other is DailyStatistics &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday &&
        sunday == other.sunday;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, monday.hashCode);
    _$hash = $jc(_$hash, tuesday.hashCode);
    _$hash = $jc(_$hash, wednesday.hashCode);
    _$hash = $jc(_$hash, thursday.hashCode);
    _$hash = $jc(_$hash, friday.hashCode);
    _$hash = $jc(_$hash, saturday.hashCode);
    _$hash = $jc(_$hash, sunday.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DailyStatistics')
          ..add('monday', monday)
          ..add('tuesday', tuesday)
          ..add('wednesday', wednesday)
          ..add('thursday', thursday)
          ..add('friday', friday)
          ..add('saturday', saturday)
          ..add('sunday', sunday))
        .toString();
  }
}

class DailyStatisticsBuilder
    implements Builder<DailyStatistics, DailyStatisticsBuilder> {
  _$DailyStatistics? _$v;

  int? _monday;
  int? get monday => _$this._monday;
  set monday(int? monday) => _$this._monday = monday;

  int? _tuesday;
  int? get tuesday => _$this._tuesday;
  set tuesday(int? tuesday) => _$this._tuesday = tuesday;

  int? _wednesday;
  int? get wednesday => _$this._wednesday;
  set wednesday(int? wednesday) => _$this._wednesday = wednesday;

  int? _thursday;
  int? get thursday => _$this._thursday;
  set thursday(int? thursday) => _$this._thursday = thursday;

  int? _friday;
  int? get friday => _$this._friday;
  set friday(int? friday) => _$this._friday = friday;

  int? _saturday;
  int? get saturday => _$this._saturday;
  set saturday(int? saturday) => _$this._saturday = saturday;

  int? _sunday;
  int? get sunday => _$this._sunday;
  set sunday(int? sunday) => _$this._sunday = sunday;

  DailyStatisticsBuilder();

  DailyStatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _monday = $v.monday;
      _tuesday = $v.tuesday;
      _wednesday = $v.wednesday;
      _thursday = $v.thursday;
      _friday = $v.friday;
      _saturday = $v.saturday;
      _sunday = $v.sunday;
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
            monday: BuiltValueNullFieldError.checkNotNull(
                monday, r'DailyStatistics', 'monday'),
            tuesday: BuiltValueNullFieldError.checkNotNull(
                tuesday, r'DailyStatistics', 'tuesday'),
            wednesday: BuiltValueNullFieldError.checkNotNull(
                wednesday, r'DailyStatistics', 'wednesday'),
            thursday: BuiltValueNullFieldError.checkNotNull(
                thursday, r'DailyStatistics', 'thursday'),
            friday: BuiltValueNullFieldError.checkNotNull(
                friday, r'DailyStatistics', 'friday'),
            saturday: BuiltValueNullFieldError.checkNotNull(
                saturday, r'DailyStatistics', 'saturday'),
            sunday: BuiltValueNullFieldError.checkNotNull(
                sunday, r'DailyStatistics', 'sunday'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
