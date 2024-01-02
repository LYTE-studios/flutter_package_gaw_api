// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RegisterRequest> _$registerRequestSerializer =
    new _$RegisterRequestSerializer();

class _$RegisterRequestSerializer
    implements StructuredSerializer<RegisterRequest> {
  @override
  final Iterable<Type> types = const [RegisterRequest, _$RegisterRequest];
  @override
  final String wireName = 'RegisterRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, RegisterRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RegisterRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RegisterRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$RegisterRequest extends RegisterRequest {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String password;

  factory _$RegisterRequest([void Function(RegisterRequestBuilder)? updates]) =>
      (new RegisterRequestBuilder()..update(updates))._build();

  _$RegisterRequest._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'RegisterRequest', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'RegisterRequest', 'lastName');
    BuiltValueNullFieldError.checkNotNull(email, r'RegisterRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'RegisterRequest', 'password');
  }

  @override
  RegisterRequest rebuild(void Function(RegisterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterRequestBuilder toBuilder() =>
      new RegisterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterRequest &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterRequest')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class RegisterRequestBuilder
    implements Builder<RegisterRequest, RegisterRequestBuilder> {
  _$RegisterRequest? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  RegisterRequestBuilder();

  RegisterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterRequest;
  }

  @override
  void update(void Function(RegisterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterRequest build() => _build();

  _$RegisterRequest _build() {
    final _$result = _$v ??
        new _$RegisterRequest._(
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'RegisterRequest', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'RegisterRequest', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'RegisterRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'RegisterRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
