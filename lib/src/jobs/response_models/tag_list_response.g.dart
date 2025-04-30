// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TagListResponse> _$tagListResponseSerializer =
    new _$TagListResponseSerializer();

class _$TagListResponseSerializer
    implements StructuredSerializer<TagListResponse> {
  @override
  final Iterable<Type> types = const [TagListResponse, _$TagListResponse];
  @override
  final String wireName = 'TagListResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, TagListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Tag)])));
    }
    return result;
  }

  @override
  TagListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TagListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Tag)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$TagListResponse extends TagListResponse {
  @override
  final BuiltList<Tag>? tags;

  factory _$TagListResponse([void Function(TagListResponseBuilder)? updates]) =>
      (new TagListResponseBuilder()..update(updates))._build();

  _$TagListResponse._({this.tags}) : super._();

  @override
  TagListResponse rebuild(void Function(TagListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TagListResponseBuilder toBuilder() =>
      new TagListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TagListResponse && tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TagListResponse')..add('tags', tags))
        .toString();
  }
}

class TagListResponseBuilder
    implements Builder<TagListResponse, TagListResponseBuilder> {
  _$TagListResponse? _$v;

  ListBuilder<Tag>? _tags;
  ListBuilder<Tag> get tags => _$this._tags ??= new ListBuilder<Tag>();
  set tags(ListBuilder<Tag>? tags) => _$this._tags = tags;

  TagListResponseBuilder();

  TagListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TagListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TagListResponse;
  }

  @override
  void update(void Function(TagListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TagListResponse build() => _build();

  _$TagListResponse _build() {
    _$TagListResponse _$result;
    try {
      _$result = _$v ?? new _$TagListResponse._(tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TagListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
