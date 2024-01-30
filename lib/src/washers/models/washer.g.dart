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
        ..add('profile_picture_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        case 'profile_picture_url':
          result.profilePictureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
      this.profilePictureUrl})
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
        profilePictureUrl == other.profilePictureUrl;
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
          ..add('profilePictureUrl', profilePictureUrl))
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
              profilePictureUrl: profilePictureUrl);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
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
