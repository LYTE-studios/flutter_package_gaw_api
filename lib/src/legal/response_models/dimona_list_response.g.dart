// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dimona_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DimonaListResponse> _$dimonaListResponseSerializer =
    new _$DimonaListResponseSerializer();

class _$DimonaListResponseSerializer
    implements StructuredSerializer<DimonaListResponse> {
  @override
  final Iterable<Type> types = const [DimonaListResponse, _$DimonaListResponse];
  @override
  final String wireName = 'DimonaListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DimonaListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dimonas',
      serializers.serialize(object.dimonas,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Dimona)])),
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
  DimonaListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DimonaListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dimonas':
          result.dimonas.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Dimona)]))!
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

class _$DimonaListResponse extends DimonaListResponse {
  @override
  final BuiltList<Dimona> dimonas;
  @override
  final int? itemsPerPage;
  @override
  final int? total;

  factory _$DimonaListResponse(
          [void Function(DimonaListResponseBuilder)? updates]) =>
      (new DimonaListResponseBuilder()..update(updates))._build();

  _$DimonaListResponse._({required this.dimonas, this.itemsPerPage, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dimonas, r'DimonaListResponse', 'dimonas');
  }

  @override
  DimonaListResponse rebuild(
          void Function(DimonaListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DimonaListResponseBuilder toBuilder() =>
      new DimonaListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DimonaListResponse &&
        dimonas == other.dimonas &&
        itemsPerPage == other.itemsPerPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dimonas.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DimonaListResponse')
          ..add('dimonas', dimonas)
          ..add('itemsPerPage', itemsPerPage)
          ..add('total', total))
        .toString();
  }
}

class DimonaListResponseBuilder
    implements Builder<DimonaListResponse, DimonaListResponseBuilder> {
  _$DimonaListResponse? _$v;

  ListBuilder<Dimona>? _dimonas;
  ListBuilder<Dimona> get dimonas =>
      _$this._dimonas ??= new ListBuilder<Dimona>();
  set dimonas(ListBuilder<Dimona>? dimonas) => _$this._dimonas = dimonas;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  DimonaListResponseBuilder();

  DimonaListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dimonas = $v.dimonas.toBuilder();
      _itemsPerPage = $v.itemsPerPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DimonaListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DimonaListResponse;
  }

  @override
  void update(void Function(DimonaListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DimonaListResponse build() => _build();

  _$DimonaListResponse _build() {
    _$DimonaListResponse _$result;
    try {
      _$result = _$v ??
          new _$DimonaListResponse._(
              dimonas: dimonas.build(),
              itemsPerPage: itemsPerPage,
              total: total);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dimonas';
        dimonas.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DimonaListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
