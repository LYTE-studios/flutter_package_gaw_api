// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'washer_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WasherUpdateRequest> _$washerUpdateRequestSerializer =
    new _$WasherUpdateRequestSerializer();

class _$WasherUpdateRequestSerializer
    implements StructuredSerializer<WasherUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    WasherUpdateRequest,
    _$WasherUpdateRequest
  ];
  @override
  final String wireName = 'WasherUpdateRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WasherUpdateRequest object,
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
    value = object.taxNumber;
    if (value != null) {
      result
        ..add('tax_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WasherUpdateRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WasherUpdateRequestBuilder();

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
        case 'profile_picture':
          result.profilePictureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'tax_number':
          result.taxNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WasherUpdateRequest extends WasherUpdateRequest {
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? profilePictureUrl;
  @override
  final Address? address;
  @override
  final String? taxNumber;
  @override
  final int? dateOfBirth;
  @override
  final String? company;

  factory _$WasherUpdateRequest(
          [void Function(WasherUpdateRequestBuilder)? updates]) =>
      (new WasherUpdateRequestBuilder()..update(updates))._build();

  _$WasherUpdateRequest._(
      {this.email,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.profilePictureUrl,
      this.address,
      this.taxNumber,
      this.dateOfBirth,
      this.company})
      : super._();

  @override
  WasherUpdateRequest rebuild(
          void Function(WasherUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WasherUpdateRequestBuilder toBuilder() =>
      new WasherUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WasherUpdateRequest &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        profilePictureUrl == other.profilePictureUrl &&
        address == other.address &&
        taxNumber == other.taxNumber &&
        dateOfBirth == other.dateOfBirth &&
        company == other.company;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, taxNumber.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WasherUpdateRequest')
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('profilePictureUrl', profilePictureUrl)
          ..add('address', address)
          ..add('taxNumber', taxNumber)
          ..add('dateOfBirth', dateOfBirth)
          ..add('company', company))
        .toString();
  }
}

class WasherUpdateRequestBuilder
    implements Builder<WasherUpdateRequest, WasherUpdateRequestBuilder> {
  _$WasherUpdateRequest? _$v;

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

  String? _profilePictureUrl;
  String? get profilePictureUrl => _$this._profilePictureUrl;
  set profilePictureUrl(String? profilePictureUrl) =>
      _$this._profilePictureUrl = profilePictureUrl;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  String? _taxNumber;
  String? get taxNumber => _$this._taxNumber;
  set taxNumber(String? taxNumber) => _$this._taxNumber = taxNumber;

  int? _dateOfBirth;
  int? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(int? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  WasherUpdateRequestBuilder();

  WasherUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _profilePictureUrl = $v.profilePictureUrl;
      _address = $v.address?.toBuilder();
      _taxNumber = $v.taxNumber;
      _dateOfBirth = $v.dateOfBirth;
      _company = $v.company;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WasherUpdateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WasherUpdateRequest;
  }

  @override
  void update(void Function(WasherUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WasherUpdateRequest build() => _build();

  _$WasherUpdateRequest _build() {
    _$WasherUpdateRequest _$result;
    try {
      _$result = _$v ??
          new _$WasherUpdateRequest._(
              email: email,
              phoneNumber: phoneNumber,
              firstName: firstName,
              lastName: lastName,
              profilePictureUrl: profilePictureUrl,
              address: _address?.build(),
              taxNumber: taxNumber,
              dateOfBirth: dateOfBirth,
              company: company);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WasherUpdateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
