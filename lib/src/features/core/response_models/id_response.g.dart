// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IdResponse> _$idResponseSerializer = new _$IdResponseSerializer();

class _$IdResponseSerializer implements StructuredSerializer<IdResponse> {
  @override
  final Iterable<Type> types = const [IdResponse, _$IdResponse];
  @override
  final String wireName = 'IdResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, IdResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user_id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  IdResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IdResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$IdResponse extends IdResponse {
  @override
  final String id;

  factory _$IdResponse([void Function(IdResponseBuilder)? updates]) =>
      (new IdResponseBuilder()..update(updates))._build();

  _$IdResponse._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'IdResponse', 'id');
  }

  @override
  IdResponse rebuild(void Function(IdResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IdResponseBuilder toBuilder() => new IdResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IdResponse && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IdResponse')..add('id', id))
        .toString();
  }
}

class IdResponseBuilder implements Builder<IdResponse, IdResponseBuilder> {
  _$IdResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  IdResponseBuilder();

  IdResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IdResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IdResponse;
  }

  @override
  void update(void Function(IdResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IdResponse build() => _build();

  _$IdResponse _build() {
    final _$result = _$v ??
        new _$IdResponse._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'IdResponse', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint