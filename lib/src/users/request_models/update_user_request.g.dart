// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateUserRequest> _$updateUserRequestSerializer =
    new _$UpdateUserRequestSerializer();

class _$UpdateUserRequestSerializer
    implements StructuredSerializer<UpdateUserRequest> {
  @override
  final Iterable<Type> types = const [UpdateUserRequest, _$UpdateUserRequest];
  @override
  final String wireName = 'UpdateUserRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, UpdateUserRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user_id',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.billingAddress;
    if (value != null) {
      result
        ..add('billing_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    return result;
  }

  @override
  UpdateUserRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateUserRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tax_number':
          result.taxNumber = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$UpdateUserRequest extends UpdateUserRequest {
  @override
  final String userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? initials;
  @override
  final int? dateOfBirth;
  @override
  final String? description;
  @override
  final String? phoneNumber;
  @override
  final String? taxNumber;
  @override
  final Address? address;
  @override
  final Address? billingAddress;

  factory _$UpdateUserRequest(
          [void Function(UpdateUserRequestBuilder)? updates]) =>
      (new UpdateUserRequestBuilder()..update(updates))._build();

  _$UpdateUserRequest._(
      {required this.userId,
      this.firstName,
      this.lastName,
      this.initials,
      this.dateOfBirth,
      this.description,
      this.phoneNumber,
      this.taxNumber,
      this.address,
      this.billingAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'UpdateUserRequest', 'userId');
  }

  @override
  UpdateUserRequest rebuild(void Function(UpdateUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserRequestBuilder toBuilder() =>
      new UpdateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserRequest &&
        userId == other.userId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        initials == other.initials &&
        dateOfBirth == other.dateOfBirth &&
        description == other.description &&
        phoneNumber == other.phoneNumber &&
        taxNumber == other.taxNumber &&
        address == other.address &&
        billingAddress == other.billingAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, initials.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, taxNumber.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserRequest')
          ..add('userId', userId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('initials', initials)
          ..add('dateOfBirth', dateOfBirth)
          ..add('description', description)
          ..add('phoneNumber', phoneNumber)
          ..add('taxNumber', taxNumber)
          ..add('address', address)
          ..add('billingAddress', billingAddress))
        .toString();
  }
}

class UpdateUserRequestBuilder
    implements Builder<UpdateUserRequest, UpdateUserRequestBuilder> {
  _$UpdateUserRequest? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _initials;
  String? get initials => _$this._initials;
  set initials(String? initials) => _$this._initials = initials;

  int? _dateOfBirth;
  int? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(int? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _taxNumber;
  String? get taxNumber => _$this._taxNumber;
  set taxNumber(String? taxNumber) => _$this._taxNumber = taxNumber;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  AddressBuilder? _billingAddress;
  AddressBuilder get billingAddress =>
      _$this._billingAddress ??= new AddressBuilder();
  set billingAddress(AddressBuilder? billingAddress) =>
      _$this._billingAddress = billingAddress;

  UpdateUserRequestBuilder();

  UpdateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _initials = $v.initials;
      _dateOfBirth = $v.dateOfBirth;
      _description = $v.description;
      _phoneNumber = $v.phoneNumber;
      _taxNumber = $v.taxNumber;
      _address = $v.address?.toBuilder();
      _billingAddress = $v.billingAddress?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserRequest;
  }

  @override
  void update(void Function(UpdateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserRequest build() => _build();

  _$UpdateUserRequest _build() {
    _$UpdateUserRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateUserRequest._(
              userId: BuiltValueNullFieldError.checkNotNull(
                  userId, r'UpdateUserRequest', 'userId'),
              firstName: firstName,
              lastName: lastName,
              initials: initials,
              dateOfBirth: dateOfBirth,
              description: description,
              phoneNumber: phoneNumber,
              taxNumber: taxNumber,
              address: _address?.build(),
              billingAddress: _billingAddress?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
        _$failedField = 'billingAddress';
        _billingAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateUserRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
