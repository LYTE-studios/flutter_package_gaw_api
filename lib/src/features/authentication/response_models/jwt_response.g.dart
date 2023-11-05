// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JwtResponse> _$jwtResponseSerializer = new _$JwtResponseSerializer();

class _$JwtResponseSerializer implements StructuredSerializer<JwtResponse> {
  @override
  final Iterable<Type> types = const [JwtResponse, _$JwtResponse];
  @override
  final String wireName = 'JwtResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, JwtResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accessToken;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  JwtResponse deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JwtResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$JwtResponse extends JwtResponse {
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$JwtResponse([void Function(JwtResponseBuilder)? updates]) =>
      (new JwtResponseBuilder()..update(updates))._build();

  _$JwtResponse._({this.accessToken, this.refreshToken}) : super._();

  @override
  JwtResponse rebuild(void Function(JwtResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtResponseBuilder toBuilder() => new JwtResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtResponse &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JwtResponse')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class JwtResponseBuilder implements Builder<JwtResponse, JwtResponseBuilder> {
  _$JwtResponse? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  JwtResponseBuilder();

  JwtResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JwtResponse;
  }

  @override
  void update(void Function(JwtResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JwtResponse build() => _build();

  _$JwtResponse _build() {
    final _$result = _$v ??
        new _$JwtResponse._(
            accessToken: accessToken, refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
