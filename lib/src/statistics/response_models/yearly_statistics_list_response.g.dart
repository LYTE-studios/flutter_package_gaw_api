// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yearly_statistics_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YearlyStatisticsListResponse>
    _$yearlyStatisticsListResponseSerializer =
    new _$YearlyStatisticsListResponseSerializer();

class _$YearlyStatisticsListResponseSerializer
    implements StructuredSerializer<YearlyStatisticsListResponse> {
  @override
  final Iterable<Type> types = const [
    YearlyStatisticsListResponse,
    _$YearlyStatisticsListResponse
  ];
  @override
  final String wireName = 'YearlyStatisticsListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, YearlyStatisticsListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'statistics',
      serializers.serialize(object.years,
          specifiedType: const FullType(
              BuiltList, const [const FullType(YearlyStatistics)])),
    ];

    return result;
  }

  @override
  YearlyStatisticsListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YearlyStatisticsListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'statistics':
          result.years.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(YearlyStatistics)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$YearlyStatisticsListResponse extends YearlyStatisticsListResponse {
  @override
  final BuiltList<YearlyStatistics> years;

  factory _$YearlyStatisticsListResponse(
          [void Function(YearlyStatisticsListResponseBuilder)? updates]) =>
      (new YearlyStatisticsListResponseBuilder()..update(updates))._build();

  _$YearlyStatisticsListResponse._({required this.years}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        years, r'YearlyStatisticsListResponse', 'years');
  }

  @override
  YearlyStatisticsListResponse rebuild(
          void Function(YearlyStatisticsListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YearlyStatisticsListResponseBuilder toBuilder() =>
      new YearlyStatisticsListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YearlyStatisticsListResponse && years == other.years;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, years.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'YearlyStatisticsListResponse')
          ..add('years', years))
        .toString();
  }
}

class YearlyStatisticsListResponseBuilder
    implements
        Builder<YearlyStatisticsListResponse,
            YearlyStatisticsListResponseBuilder> {
  _$YearlyStatisticsListResponse? _$v;

  ListBuilder<YearlyStatistics>? _years;
  ListBuilder<YearlyStatistics> get years =>
      _$this._years ??= new ListBuilder<YearlyStatistics>();
  set years(ListBuilder<YearlyStatistics>? years) => _$this._years = years;

  YearlyStatisticsListResponseBuilder();

  YearlyStatisticsListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _years = $v.years.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YearlyStatisticsListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$YearlyStatisticsListResponse;
  }

  @override
  void update(void Function(YearlyStatisticsListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  YearlyStatisticsListResponse build() => _build();

  _$YearlyStatisticsListResponse _build() {
    _$YearlyStatisticsListResponse _$result;
    try {
      _$result =
          _$v ?? new _$YearlyStatisticsListResponse._(years: years.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'years';
        years.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'YearlyStatisticsListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
