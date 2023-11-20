// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PassTokenResponse> _$passTokenResponseSerializer =
    new _$PassTokenResponseSerializer();

class _$PassTokenResponseSerializer
    implements StructuredSerializer<PassTokenResponse> {
  @override
  final Iterable<Type> types = const [PassTokenResponse, _$PassTokenResponse];
  @override
  final String wireName = 'PassTokenResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, PassTokenResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PassTokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PassTokenResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PassTokenResponse extends PassTokenResponse {
  @override
  final String token;

  factory _$PassTokenResponse(
          [void Function(PassTokenResponseBuilder)? updates]) =>
      (new PassTokenResponseBuilder()..update(updates))._build();

  _$PassTokenResponse._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, r'PassTokenResponse', 'token');
  }

  @override
  PassTokenResponse rebuild(void Function(PassTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PassTokenResponseBuilder toBuilder() =>
      new PassTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PassTokenResponse && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PassTokenResponse')
          ..add('token', token))
        .toString();
  }
}

class PassTokenResponseBuilder
    implements Builder<PassTokenResponse, PassTokenResponseBuilder> {
  _$PassTokenResponse? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  PassTokenResponseBuilder();

  PassTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PassTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PassTokenResponse;
  }

  @override
  void update(void Function(PassTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PassTokenResponse build() => _build();

  _$PassTokenResponse _build() {
    final _$result = _$v ??
        new _$PassTokenResponse._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'PassTokenResponse', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
