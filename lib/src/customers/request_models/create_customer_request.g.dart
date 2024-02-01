// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateCustomerRequest> _$createCustomerRequestSerializer =
    new _$CreateCustomerRequestSerializer();

class _$CreateCustomerRequestSerializer
    implements StructuredSerializer<CreateCustomerRequest> {
  @override
  final Iterable<Type> types = const [
    CreateCustomerRequest,
    _$CreateCustomerRequest
  ];
  @override
  final String wireName = 'CreateCustomerRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CreateCustomerRequest object,
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
    ];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    value = object.billingAddress;
    if (value != null) {
      result
        ..add('billing_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    value = object.taxNumber;
    if (value != null) {
      result
        ..add('tax_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreateCustomerRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateCustomerRequestBuilder();

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
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'billing_address':
          result.billingAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'tax_number':
          result.taxNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateCustomerRequest extends CreateCustomerRequest {
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final String? company;
  @override
  final Address? address;
  @override
  final Address? billingAddress;
  @override
  final String? taxNumber;

  factory _$CreateCustomerRequest(
          [void Function(CreateCustomerRequestBuilder)? updates]) =>
      (new CreateCustomerRequestBuilder()..update(updates))._build();

  _$CreateCustomerRequest._(
      {required this.firstName,
      required this.lastName,
      required this.email,
      this.phoneNumber,
      this.company,
      this.address,
      this.billingAddress,
      this.taxNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'CreateCustomerRequest', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'CreateCustomerRequest', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'CreateCustomerRequest', 'email');
  }

  @override
  CreateCustomerRequest rebuild(
          void Function(CreateCustomerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCustomerRequestBuilder toBuilder() =>
      new CreateCustomerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCustomerRequest &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        company == other.company &&
        address == other.address &&
        billingAddress == other.billingAddress &&
        taxNumber == other.taxNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, taxNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCustomerRequest')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('company', company)
          ..add('address', address)
          ..add('billingAddress', billingAddress)
          ..add('taxNumber', taxNumber))
        .toString();
  }
}

class CreateCustomerRequestBuilder
    implements Builder<CreateCustomerRequest, CreateCustomerRequestBuilder> {
  _$CreateCustomerRequest? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  AddressBuilder? _billingAddress;
  AddressBuilder get billingAddress =>
      _$this._billingAddress ??= new AddressBuilder();
  set billingAddress(AddressBuilder? billingAddress) =>
      _$this._billingAddress = billingAddress;

  String? _taxNumber;
  String? get taxNumber => _$this._taxNumber;
  set taxNumber(String? taxNumber) => _$this._taxNumber = taxNumber;

  CreateCustomerRequestBuilder();

  CreateCustomerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _company = $v.company;
      _address = $v.address?.toBuilder();
      _billingAddress = $v.billingAddress?.toBuilder();
      _taxNumber = $v.taxNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCustomerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCustomerRequest;
  }

  @override
  void update(void Function(CreateCustomerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCustomerRequest build() => _build();

  _$CreateCustomerRequest _build() {
    _$CreateCustomerRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCustomerRequest._(
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'CreateCustomerRequest', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'CreateCustomerRequest', 'lastName'),
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'CreateCustomerRequest', 'email'),
              phoneNumber: phoneNumber,
              company: company,
              address: _address?.build(),
              billingAddress: _billingAddress?.build(),
              taxNumber: taxNumber);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'billingAddress';
        _billingAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCustomerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
