// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_customer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateCustomerRequest> _$updateCustomerRequestSerializer =
    new _$UpdateCustomerRequestSerializer();

class _$UpdateCustomerRequestSerializer
    implements StructuredSerializer<UpdateCustomerRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateCustomerRequest,
    _$UpdateCustomerRequest
  ];
  @override
  final String wireName = 'UpdateCustomerRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UpdateCustomerRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.initials;
    if (value != null) {
      result
        ..add('initials')
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
    value = object.profilePictureUrl;
    if (value != null) {
      result
        ..add('profile_picture')
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
    value = object.specialCommittee;
    if (value != null) {
      result
        ..add('special_committee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UpdateCustomerRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateCustomerRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'initials':
          result.initials = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'profile_picture':
          result.profilePictureUrl = serializers.deserialize(value,
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
        case 'special_committee':
          result.specialCommittee = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateCustomerRequest extends UpdateCustomerRequest {
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? initials;
  @override
  final String? company;
  @override
  final String? profilePictureUrl;
  @override
  final Address? address;
  @override
  final Address? billingAddress;
  @override
  final String? taxNumber;
  @override
  final String? specialCommittee;

  factory _$UpdateCustomerRequest(
          [void Function(UpdateCustomerRequestBuilder)? updates]) =>
      (new UpdateCustomerRequestBuilder()..update(updates))._build();

  _$UpdateCustomerRequest._(
      {this.email,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.initials,
      this.company,
      this.profilePictureUrl,
      this.address,
      this.billingAddress,
      this.taxNumber,
      this.specialCommittee})
      : super._();

  @override
  UpdateCustomerRequest rebuild(
          void Function(UpdateCustomerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCustomerRequestBuilder toBuilder() =>
      new UpdateCustomerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCustomerRequest &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        initials == other.initials &&
        company == other.company &&
        profilePictureUrl == other.profilePictureUrl &&
        address == other.address &&
        billingAddress == other.billingAddress &&
        taxNumber == other.taxNumber &&
        specialCommittee == other.specialCommittee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, initials.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, taxNumber.hashCode);
    _$hash = $jc(_$hash, specialCommittee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCustomerRequest')
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('initials', initials)
          ..add('company', company)
          ..add('profilePictureUrl', profilePictureUrl)
          ..add('address', address)
          ..add('billingAddress', billingAddress)
          ..add('taxNumber', taxNumber)
          ..add('specialCommittee', specialCommittee))
        .toString();
  }
}

class UpdateCustomerRequestBuilder
    implements Builder<UpdateCustomerRequest, UpdateCustomerRequestBuilder> {
  _$UpdateCustomerRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _initials;
  String? get initials => _$this._initials;
  set initials(String? initials) => _$this._initials = initials;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  String? _profilePictureUrl;
  String? get profilePictureUrl => _$this._profilePictureUrl;
  set profilePictureUrl(String? profilePictureUrl) =>
      _$this._profilePictureUrl = profilePictureUrl;

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

  String? _specialCommittee;
  String? get specialCommittee => _$this._specialCommittee;
  set specialCommittee(String? specialCommittee) =>
      _$this._specialCommittee = specialCommittee;

  UpdateCustomerRequestBuilder();

  UpdateCustomerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _initials = $v.initials;
      _company = $v.company;
      _profilePictureUrl = $v.profilePictureUrl;
      _address = $v.address?.toBuilder();
      _billingAddress = $v.billingAddress?.toBuilder();
      _taxNumber = $v.taxNumber;
      _specialCommittee = $v.specialCommittee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCustomerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateCustomerRequest;
  }

  @override
  void update(void Function(UpdateCustomerRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCustomerRequest build() => _build();

  _$UpdateCustomerRequest _build() {
    _$UpdateCustomerRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateCustomerRequest._(
              email: email,
              phoneNumber: phoneNumber,
              firstName: firstName,
              lastName: lastName,
              initials: initials,
              company: company,
              profilePictureUrl: profilePictureUrl,
              address: _address?.build(),
              billingAddress: _billingAddress?.build(),
              taxNumber: taxNumber,
              specialCommittee: specialCommittee);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'billingAddress';
        _billingAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateCustomerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
