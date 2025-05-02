// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Worker> _$workerSerializer = new _$WorkerSerializer();

class _$WorkerSerializer implements StructuredSerializer<Worker> {
  @override
  final Iterable<Type> types = const [Worker, _$Worker];
  @override
  final String wireName = 'Worker';

  @override
  Iterable<Object?> serialize(Serializers serializers, Worker object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.iban;
    if (value != null) {
      result
        ..add('iban')
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
    value = object.ssn;
    if (value != null) {
      result
        ..add('ssn')
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
    value = object.placeOfBirth;
    if (value != null) {
      result
        ..add('place_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(List, const [const FullType(Tag)])));
    }
    value = object.workerType;
    if (value != null) {
      result
        ..add('worker_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Worker deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkerBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iban':
          result.iban = serializers.deserialize(value,
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
        case 'ssn':
          result.ssn = serializers.deserialize(value,
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
        case 'place_of_birth':
          result.placeOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tags':
          result.tags = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(Tag)]))
              as List<Tag>?;
          break;
        case 'worker_type':
          result.workerType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Worker extends Worker {
  @override
  final String? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? phoneNumber;
  @override
  final String? iban;
  @override
  final String email;
  @override
  final Address? address;
  @override
  final String? profilePictureUrl;
  @override
  final String? initials;
  @override
  final String? ssn;
  @override
  final Address? billingAddress;
  @override
  final int? createdAt;
  @override
  final int? dateOfBirth;
  @override
  final String? placeOfBirth;
  @override
  final List<Tag>? tags;
  @override
  final String? workerType;

  factory _$Worker([void Function(WorkerBuilder)? updates]) =>
      (new WorkerBuilder()..update(updates))._build();

  _$Worker._(
      {this.id,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.iban,
      required this.email,
      this.address,
      this.profilePictureUrl,
      this.initials,
      this.ssn,
      this.billingAddress,
      this.createdAt,
      this.dateOfBirth,
      this.placeOfBirth,
      this.tags,
      this.workerType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'Worker', 'email');
  }

  @override
  Worker rebuild(void Function(WorkerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkerBuilder toBuilder() => new WorkerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Worker &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        phoneNumber == other.phoneNumber &&
        iban == other.iban &&
        email == other.email &&
        address == other.address &&
        profilePictureUrl == other.profilePictureUrl &&
        initials == other.initials &&
        ssn == other.ssn &&
        billingAddress == other.billingAddress &&
        createdAt == other.createdAt &&
        dateOfBirth == other.dateOfBirth &&
        placeOfBirth == other.placeOfBirth &&
        tags == other.tags &&
        workerType == other.workerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, iban.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jc(_$hash, initials.hashCode);
    _$hash = $jc(_$hash, ssn.hashCode);
    _$hash = $jc(_$hash, billingAddress.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, placeOfBirth.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, workerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Worker')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('phoneNumber', phoneNumber)
          ..add('iban', iban)
          ..add('email', email)
          ..add('address', address)
          ..add('profilePictureUrl', profilePictureUrl)
          ..add('initials', initials)
          ..add('ssn', ssn)
          ..add('billingAddress', billingAddress)
          ..add('createdAt', createdAt)
          ..add('dateOfBirth', dateOfBirth)
          ..add('placeOfBirth', placeOfBirth)
          ..add('tags', tags)
          ..add('workerType', workerType))
        .toString();
  }
}

class WorkerBuilder implements Builder<Worker, WorkerBuilder> {
  _$Worker? _$v;

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

  String? _iban;
  String? get iban => _$this._iban;
  set iban(String? iban) => _$this._iban = iban;

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

  String? _ssn;
  String? get ssn => _$this._ssn;
  set ssn(String? ssn) => _$this._ssn = ssn;

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

  String? _placeOfBirth;
  String? get placeOfBirth => _$this._placeOfBirth;
  set placeOfBirth(String? placeOfBirth) => _$this._placeOfBirth = placeOfBirth;

  List<Tag>? _tags;
  List<Tag>? get tags => _$this._tags;
  set tags(List<Tag>? tags) => _$this._tags = tags;

  String? _workerType;
  String? get workerType => _$this._workerType;
  set workerType(String? workerType) => _$this._workerType = workerType;

  WorkerBuilder();

  WorkerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _phoneNumber = $v.phoneNumber;
      _iban = $v.iban;
      _email = $v.email;
      _address = $v.address?.toBuilder();
      _profilePictureUrl = $v.profilePictureUrl;
      _initials = $v.initials;
      _ssn = $v.ssn;
      _billingAddress = $v.billingAddress?.toBuilder();
      _createdAt = $v.createdAt;
      _dateOfBirth = $v.dateOfBirth;
      _placeOfBirth = $v.placeOfBirth;
      _tags = $v.tags;
      _workerType = $v.workerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Worker other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Worker;
  }

  @override
  void update(void Function(WorkerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Worker build() => _build();

  _$Worker _build() {
    _$Worker _$result;
    try {
      _$result = _$v ??
          new _$Worker._(
              id: id,
              firstName: firstName,
              lastName: lastName,
              phoneNumber: phoneNumber,
              iban: iban,
              email: BuiltValueNullFieldError.checkNotNull(
                  email, r'Worker', 'email'),
              address: _address?.build(),
              profilePictureUrl: profilePictureUrl,
              initials: initials,
              ssn: ssn,
              billingAddress: _billingAddress?.build(),
              createdAt: createdAt,
              dateOfBirth: dateOfBirth,
              placeOfBirth: placeOfBirth,
              tags: tags,
              workerType: workerType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'billingAddress';
        _billingAddress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Worker', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
