// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'washers_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WashersListResponse> _$washersListResponseSerializer =
    new _$WashersListResponseSerializer();

class _$WashersListResponseSerializer
    implements StructuredSerializer<WashersListResponse> {
  @override
  final Iterable<Type> types = const [
    WashersListResponse,
    _$WashersListResponse
  ];
  @override
  final String wireName = 'WashersListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WashersListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'washers',
      serializers.serialize(object.washers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Washer)])),
    ];
    Object? value;
    value = object.itemsPerPage;
    if (value != null) {
      result
        ..add('items_per_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WashersListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WashersListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'washers':
          result.washers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Washer)]))!
              as BuiltList<Object?>);
          break;
        case 'items_per_page':
          result.itemsPerPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WashersListResponse extends WashersListResponse {
  @override
  final BuiltList<Washer> washers;
  @override
  final int? itemsPerPage;
  @override
  final int? total;

  factory _$WashersListResponse(
          [void Function(WashersListResponseBuilder)? updates]) =>
      (new WashersListResponseBuilder()..update(updates))._build();

  _$WashersListResponse._(
      {required this.washers, this.itemsPerPage, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        washers, r'WashersListResponse', 'washers');
  }

  @override
  WashersListResponse rebuild(
          void Function(WashersListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WashersListResponseBuilder toBuilder() =>
      new WashersListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WashersListResponse &&
        washers == other.washers &&
        itemsPerPage == other.itemsPerPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, washers.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WashersListResponse')
          ..add('washers', washers)
          ..add('itemsPerPage', itemsPerPage)
          ..add('total', total))
        .toString();
  }
}

class WashersListResponseBuilder
    implements Builder<WashersListResponse, WashersListResponseBuilder> {
  _$WashersListResponse? _$v;

  ListBuilder<Washer>? _washers;
  ListBuilder<Washer> get washers =>
      _$this._washers ??= new ListBuilder<Washer>();
  set washers(ListBuilder<Washer>? washers) => _$this._washers = washers;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  WashersListResponseBuilder();

  WashersListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _washers = $v.washers.toBuilder();
      _itemsPerPage = $v.itemsPerPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WashersListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WashersListResponse;
  }

  @override
  void update(void Function(WashersListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WashersListResponse build() => _build();

  _$WashersListResponse _build() {
    _$WashersListResponse _$result;
    try {
      _$result = _$v ??
          new _$WashersListResponse._(
              washers: washers.build(),
              itemsPerPage: itemsPerPage,
              total: total);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'washers';
        washers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WashersListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
