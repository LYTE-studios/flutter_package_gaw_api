// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exports_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExportsListResponse> _$exportsListResponseSerializer =
    new _$ExportsListResponseSerializer();

class _$ExportsListResponseSerializer
    implements StructuredSerializer<ExportsListResponse> {
  @override
  final Iterable<Type> types = const [
    ExportsListResponse,
    _$ExportsListResponse
  ];
  @override
  final String wireName = 'ExportsListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExportsListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.exports;
    if (value != null) {
      result
        ..add('exports')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Export)])));
    }
    return result;
  }

  @override
  ExportsListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExportsListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'exports':
          result.exports.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Export)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ExportsListResponse extends ExportsListResponse {
  @override
  final BuiltList<Export>? exports;

  factory _$ExportsListResponse(
          [void Function(ExportsListResponseBuilder)? updates]) =>
      (new ExportsListResponseBuilder()..update(updates))._build();

  _$ExportsListResponse._({this.exports}) : super._();

  @override
  ExportsListResponse rebuild(
          void Function(ExportsListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportsListResponseBuilder toBuilder() =>
      new ExportsListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportsListResponse && exports == other.exports;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exports.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExportsListResponse')
          ..add('exports', exports))
        .toString();
  }
}

class ExportsListResponseBuilder
    implements Builder<ExportsListResponse, ExportsListResponseBuilder> {
  _$ExportsListResponse? _$v;

  ListBuilder<Export>? _exports;
  ListBuilder<Export> get exports =>
      _$this._exports ??= new ListBuilder<Export>();
  set exports(ListBuilder<Export>? exports) => _$this._exports = exports;

  ExportsListResponseBuilder();

  ExportsListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exports = $v.exports?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportsListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportsListResponse;
  }

  @override
  void update(void Function(ExportsListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportsListResponse build() => _build();

  _$ExportsListResponse _build() {
    _$ExportsListResponse _$result;
    try {
      _$result = _$v ?? new _$ExportsListResponse._(exports: _exports?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exports';
        _exports?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportsListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
