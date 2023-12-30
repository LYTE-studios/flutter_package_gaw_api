// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RefreshRequest> _$refreshRequestSerializer =
    new _$RefreshRequestSerializer();

class _$RefreshRequestSerializer
    implements StructuredSerializer<RefreshRequest> {
  @override
  final Iterable<Type> types = const [RefreshRequest, _$RefreshRequest];
  @override
  final String wireName = 'RefreshRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, RefreshRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refresh',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RefreshRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RefreshRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refresh':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RefreshRequest extends RefreshRequest {
  @override
  final String refreshToken;

  factory _$RefreshRequest([void Function(RefreshRequestBuilder)? updates]) =>
      (new RefreshRequestBuilder()..update(updates))._build();

  _$RefreshRequest._({required this.refreshToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'RefreshRequest', 'refreshToken');
  }

  @override
  RefreshRequest rebuild(void Function(RefreshRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshRequestBuilder toBuilder() =>
      new RefreshRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshRequest && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RefreshRequest')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class RefreshRequestBuilder
    implements Builder<RefreshRequest, RefreshRequestBuilder> {
  _$RefreshRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshRequestBuilder();

  RefreshRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshRequest;
  }

  @override
  void update(void Function(RefreshRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshRequest build() => _build();

  _$RefreshRequest _build() {
    final _$result = _$v ??
        new _$RefreshRequest._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'RefreshRequest', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
