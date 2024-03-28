// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'washer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Washer> _$washerSerializer = new _$WasherSerializer();

class _$WasherSerializer implements StructuredSerializer<Washer> {
  @override
  final Iterable<Type> types = const [Washer, _$Washer];
  @override
  final String wireName = 'Washer';

  @override
  Iterable<Object?> serialize(Serializers serializers, Washer object,
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
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
    value = object.taxNumber;
    if (value != null) {
      result
        ..add('tax_number')
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
    value = object.profilePictureUrl;
    if (value != null) {
      result
        ..add('profile_picture')
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
    value = object.billingAddress;
    if (value != null) {
      result
        ..add('billing_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hours;
    if (value != null) {
      result
        ..add('hours')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Washer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WasherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tax_number':
          result.taxNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'profile_picture':
          result.profilePictureUrl = serializers.deserialize(value,
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
        case 'billing_address':
          result.billingAddress.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hours':
          result.hours = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$Washer extends Washer {
  @override
  final String? id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? phoneNumber;
  @override
  final String? taxNumber;
  @override
  final String email;
  @override
  final Address? address;
  @override
  final String? profilePictureUrl;
  @override
  final String? initials;
  @override
  final String? company;
  @override
  final Address? billingAddress;
  @override
  final int? createdAt;
  @override
  final int? dateOfBirth;
  @override
  final double? hours;

  factory _$Washer([void Function(WasherBuilder)? updates]) =>
      (new WasherBuilder()..update(updates))._build();

  _$Washer._(
      {this.id,
      required this.firstName,
      required this.lastName,
      this.phoneNumber,
      this.taxNumber,
      required this.email,
      this.address,
      this.profilePictureUrl,
      this.initials,
      this.company,
      this.billingAddress,
      this.createdAt,
      this.dateOfBirth,
      this.hours})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(firstName, r'Washer', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'Washer', 'lastName');
    BuiltValueNullFieldError.checkNotNull(email, r'Washer', 'email');
  }

  @override
  Washer rebuild(void Function(WasherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WasherBuilder toBuilder() => new WasherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Washer &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phoneNumber == other.phoneNumber &&
        taxNumber == other.taxNumber &&
        email == other.email &&
        address == other.address &&
        profilePictureUrl == other.profilePictureUrl &&
        initials == other.initials &&
        company == other.company &&
        billingAddress == other.billingAddress &&
        createdAt == other.createdAt &&
        dateOfBirth == other.dateOfBirth &&
        hours == other.hours;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, taxNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jc(_$hash, initials.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, hours.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Washer')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phoneNumber', phoneNumber)
          ..add('taxNumber', taxNumber)
          ..add('email', email)
          ..add('address', address)
          ..add('profilePictureUrl', profilePictureUrl)
          ..add('initials', initials)
          ..add('company', company)
          ..add('billingAddress', billingAddress)
          ..add('createdAt', createdAt)
          ..add('dateOfBirth', dateOfBirth)
          ..add('hours', hours))
        .toString();
  }
}

class WasherBuilder implements Builder<Washer, WasherBuilder> {
  _$Washer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _taxNumber;
  String? get taxNumber => _$this._taxNumber;
  set taxNumber(String? taxNumber) => _$this._taxNumber = taxNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  String? _profilePictureUrl;
  String? get profilePictureUrl => _$this._profilePictureUrl;
  set profilePictureUrl(String? profilePictureUrl) =>
      _$this._profilePictureUrl = profilePictureUrl;

  String? _initials;
  String? get initials => _$this._initials;
  set initials(String? initials) => _$this._initials = initials;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  AddressBuilder? _billingAddress;
  AddressBuilder get billingAddress =>
      _$this._billingAddress ??= new AddressBuilder();
  set billingAddress(AddressBuilder? billingAddress) =>
      _$this._billingAddress = billingAddress;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  int? _dateOfBirth;
  int? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(int? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  double? _hours;
  double? get hours => _$this._hours;
  set hours(double? hours) => _$this._hours = hours;

  WasherBuilder();

  WasherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phoneNumber = $v.phoneNumber;
      _taxNumber = $v.taxNumber;
      _email = $v.email;
      _address = $v.address?.toBuilder();
      _profilePictureUrl = $v.profilePictureUrl;
      _initials = $v.initials;
      _company = $v.company;
      _billingAddress = $v.billingAddress?.toBuilder();
      _createdAt = $v.createdAt;
      _dateOfBirth = $v.dateOfBirth;
      _hours = $v.hours;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Washer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Washer;
  }

  @override
  void update(void Function(WasherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Washer build() => _build();

  _$Washer _build() {
    _$Washer _$result;
    try {
      _$result = _$v ??
          new _$Washer._(
              id: id,
              firstName: BuiltValueNullFieldError.checkNotNull(
                  firstName, r'Washer', 'firstName'),
              lastName: BuiltValueNullFieldError.checkNotNull(
                  lastName, r'Washer', 'lastName'),
              phoneNumber: phoneNumber,
              taxNumber: taxNumber,
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'Washer', 'email'),
              address: _address?.build(),
              profilePictureUrl: profilePictureUrl,
              initials: initials,
              company: company,
              billingAddress: _billingAddress?.build(),
              createdAt: createdAt,
              dateOfBirth: dateOfBirth,
              hours: hours);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'billingAddress';
        _billingAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Washer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
