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
      'phone_number',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'tax_number',
      serializers.serialize(object.taxNumber,
          specifiedType: const FullType(String)),
      'place_of_birth',
      serializers.serialize(object.placeOfBirth,
          specifiedType: const FullType(String)),
      'date_of_birth',
      serializers.serialize(object.dateOfBirth,
          specifiedType: const FullType(int)),
      'company',
      serializers.serialize(object.ssn, specifiedType: const FullType(String)),
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
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tax_number':
          result.taxNumber = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'place_of_birth':
          result.placeOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'company':
          result.ssn = serializers.deserialize(value,
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
  @override
  final String phoneNumber;
  @override
  final String taxNumber;
  @override
  final String placeOfBirth;
  @override
  final int dateOfBirth;
  @override
  final String ssn;

  factory _$RegisterRequest([void Function(RegisterRequestBuilder)? updates]) =>
      (new RegisterRequestBuilder()..update(updates))._build();

  _$RegisterRequest._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber,
      required this.taxNumber,
      required this.placeOfBirth,
      required this.dateOfBirth,
      required this.ssn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'RegisterRequest', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'RegisterRequest', 'lastName');
    BuiltValueNullFieldError.checkNotNull(email, r'RegisterRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'RegisterRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(
        phoneNumber, r'RegisterRequest', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(
        taxNumber, r'RegisterRequest', 'taxNumber');
    BuiltValueNullFieldError.checkNotNull(
        placeOfBirth, r'RegisterRequest', 'placeOfBirth');
    BuiltValueNullFieldError.checkNotNull(
        dateOfBirth, r'RegisterRequest', 'dateOfBirth');
    BuiltValueNullFieldError.checkNotNull(ssn, r'RegisterRequest', 'ssn');
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
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        taxNumber == other.taxNumber &&
        placeOfBirth == other.placeOfBirth &&
        dateOfBirth == other.dateOfBirth &&
        ssn == other.ssn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, taxNumber.hashCode);
    _$hash = $jc(_$hash, placeOfBirth.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, ssn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterRequest')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('password', password)
          ..add('phoneNumber', phoneNumber)
          ..add('taxNumber', taxNumber)
          ..add('placeOfBirth', placeOfBirth)
          ..add('dateOfBirth', dateOfBirth)
          ..add('ssn', ssn))
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

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _taxNumber;
  String? get taxNumber => _$this._taxNumber;
  set taxNumber(String? taxNumber) => _$this._taxNumber = taxNumber;

  String? _placeOfBirth;
  String? get placeOfBirth => _$this._placeOfBirth;
  set placeOfBirth(String? placeOfBirth) => _$this._placeOfBirth = placeOfBirth;

  int? _dateOfBirth;
  int? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(int? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _ssn;
  String? get ssn => _$this._ssn;
  set ssn(String? ssn) => _$this._ssn = ssn;

  RegisterRequestBuilder();

  RegisterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _password = $v.password;
      _phoneNumber = $v.phoneNumber;
      _taxNumber = $v.taxNumber;
      _placeOfBirth = $v.placeOfBirth;
      _dateOfBirth = $v.dateOfBirth;
      _ssn = $v.ssn;
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
                password, r'RegisterRequest', 'password'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, r'RegisterRequest', 'phoneNumber'),
            taxNumber: BuiltValueNullFieldError.checkNotNull(
                taxNumber, r'RegisterRequest', 'taxNumber'),
            placeOfBirth: BuiltValueNullFieldError.checkNotNull(
                placeOfBirth, r'RegisterRequest', 'placeOfBirth'),
            dateOfBirth: BuiltValueNullFieldError.checkNotNull(
                dateOfBirth, r'RegisterRequest', 'dateOfBirth'),
            ssn: BuiltValueNullFieldError.checkNotNull(
                ssn, r'RegisterRequest', 'ssn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
