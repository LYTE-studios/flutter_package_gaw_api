// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_verification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeVerificationRequest> _$codeVerificationRequestSerializer =
    new _$CodeVerificationRequestSerializer();

class _$CodeVerificationRequestSerializer
    implements StructuredSerializer<CodeVerificationRequest> {
  @override
  final Iterable<Type> types = const [
    CodeVerificationRequest,
    _$CodeVerificationRequest
  ];
  @override
  final String wireName = 'CodeVerificationRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CodeVerificationRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CodeVerificationRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeVerificationRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeVerificationRequest extends CodeVerificationRequest {
  @override
  final String email;
  @override
  final String code;

  factory _$CodeVerificationRequest(
          [void Function(CodeVerificationRequestBuilder)? updates]) =>
      (new CodeVerificationRequestBuilder()..update(updates))._build();

  _$CodeVerificationRequest._({required this.email, required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'CodeVerificationRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        code, r'CodeVerificationRequest', 'code');
  }

  @override
  CodeVerificationRequest rebuild(
          void Function(CodeVerificationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeVerificationRequestBuilder toBuilder() =>
      new CodeVerificationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeVerificationRequest &&
        email == other.email &&
        code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CodeVerificationRequest')
          ..add('email', email)
          ..add('code', code))
        .toString();
  }
}

class CodeVerificationRequestBuilder
    implements
        Builder<CodeVerificationRequest, CodeVerificationRequestBuilder> {
  _$CodeVerificationRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  CodeVerificationRequestBuilder();

  CodeVerificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeVerificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CodeVerificationRequest;
  }

  @override
  void update(void Function(CodeVerificationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CodeVerificationRequest build() => _build();

  _$CodeVerificationRequest _build() {
    final _$result = _$v ??
        new _$CodeVerificationRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'CodeVerificationRequest', 'email'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'CodeVerificationRequest', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
