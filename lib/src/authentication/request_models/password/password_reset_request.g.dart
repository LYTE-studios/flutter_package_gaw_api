// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PasswordResetRequest> _$passwordResetRequestSerializer =
    new _$PasswordResetRequestSerializer();

class _$PasswordResetRequestSerializer
    implements StructuredSerializer<PasswordResetRequest> {
  @override
  final Iterable<Type> types = const [
    PasswordResetRequest,
    _$PasswordResetRequest
  ];
  @override
  final String wireName = 'PasswordResetRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PasswordResetRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PasswordResetRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PasswordResetRequestBuilder();

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
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PasswordResetRequest extends PasswordResetRequest {
  @override
  final String token;
  @override
  final String code;
  @override
  final String password;

  factory _$PasswordResetRequest(
          [void Function(PasswordResetRequestBuilder)? updates]) =>
      (new PasswordResetRequestBuilder()..update(updates))._build();

  _$PasswordResetRequest._(
      {required this.token, required this.code, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, r'PasswordResetRequest', 'token');
    BuiltValueNullFieldError.checkNotNull(
        code, r'PasswordResetRequest', 'code');
    BuiltValueNullFieldError.checkNotNull(
        password, r'PasswordResetRequest', 'password');
  }

  @override
  PasswordResetRequest rebuild(
          void Function(PasswordResetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordResetRequestBuilder toBuilder() =>
      new PasswordResetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordResetRequest &&
        token == other.token &&
        code == other.code &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PasswordResetRequest')
          ..add('token', token)
          ..add('code', code)
          ..add('password', password))
        .toString();
  }
}

class PasswordResetRequestBuilder
    implements Builder<PasswordResetRequest, PasswordResetRequestBuilder> {
  _$PasswordResetRequest? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  PasswordResetRequestBuilder();

  PasswordResetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _code = $v.code;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordResetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordResetRequest;
  }

  @override
  void update(void Function(PasswordResetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordResetRequest build() => _build();

  _$PasswordResetRequest _build() {
    final _$result = _$v ??
        new _$PasswordResetRequest._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'PasswordResetRequest', 'token'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'PasswordResetRequest', 'code'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'PasswordResetRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
