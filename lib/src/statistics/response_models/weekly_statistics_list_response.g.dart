// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_statistics_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeeklyStatisticsListResponse>
    _$weeklyStatisticsListResponseSerializer =
    new _$WeeklyStatisticsListResponseSerializer();

class _$WeeklyStatisticsListResponseSerializer
    implements StructuredSerializer<WeeklyStatisticsListResponse> {
  @override
  final Iterable<Type> types = const [
    WeeklyStatisticsListResponse,
    _$WeeklyStatisticsListResponse
  ];
  @override
  final String wireName = 'WeeklyStatisticsListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeeklyStatisticsListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'statistics',
      serializers.serialize(object.weeks,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeeklyStatistics)])),
    ];

    return result;
  }

  @override
  WeeklyStatisticsListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeeklyStatisticsListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'statistics':
          result.weeks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeeklyStatistics)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeeklyStatisticsListResponse extends WeeklyStatisticsListResponse {
  @override
  final BuiltList<WeeklyStatistics> weeks;

  factory _$WeeklyStatisticsListResponse(
          [void Function(WeeklyStatisticsListResponseBuilder)? updates]) =>
      (new WeeklyStatisticsListResponseBuilder()..update(updates))._build();

  _$WeeklyStatisticsListResponse._({required this.weeks}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        weeks, r'WeeklyStatisticsListResponse', 'weeks');
  }

  @override
  WeeklyStatisticsListResponse rebuild(
          void Function(WeeklyStatisticsListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeeklyStatisticsListResponseBuilder toBuilder() =>
      new WeeklyStatisticsListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeeklyStatisticsListResponse && weeks == other.weeks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weeks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeeklyStatisticsListResponse')
          ..add('weeks', weeks))
        .toString();
  }
}

class WeeklyStatisticsListResponseBuilder
    implements
        Builder<WeeklyStatisticsListResponse,
            WeeklyStatisticsListResponseBuilder> {
  _$WeeklyStatisticsListResponse? _$v;

  ListBuilder<WeeklyStatistics>? _weeks;
  ListBuilder<WeeklyStatistics> get weeks =>
      _$this._weeks ??= new ListBuilder<WeeklyStatistics>();
  set weeks(ListBuilder<WeeklyStatistics>? weeks) => _$this._weeks = weeks;

  WeeklyStatisticsListResponseBuilder();

  WeeklyStatisticsListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weeks = $v.weeks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeeklyStatisticsListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeeklyStatisticsListResponse;
  }

  @override
  void update(void Function(WeeklyStatisticsListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeeklyStatisticsListResponse build() => _build();

  _$WeeklyStatisticsListResponse _build() {
    _$WeeklyStatisticsListResponse _$result;
    try {
      _$result =
          _$v ?? new _$WeeklyStatisticsListResponse._(weeks: weeks.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weeks';
        weeks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeeklyStatisticsListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
