// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'worker_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkerUpdateRequest> _$workerUpdateRequestSerializer =
    new _$WorkerUpdateRequestSerializer();

class _$WorkerUpdateRequestSerializer
    implements StructuredSerializer<WorkerUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    WorkerUpdateRequest,
    _$WorkerUpdateRequest
  ];
  @override
  final String wireName = 'WorkerUpdateRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkerUpdateRequest object,
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
    value = object.iban;
    if (value != null) {
      result
        ..add('iban')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ssn;
    if (value != null) {
      result
        ..add('ssn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tagIds;
    if (value != null) {
      result
        ..add('tag_ids')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(dynamic)])));
    }
    return result;
  }

  @override
  WorkerUpdateRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkerUpdateRequestBuilder();

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
        case 'iban':
          result.iban = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_of_birth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ssn':
          result.ssn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tag_ids':
          result.tagIds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(dynamic)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WorkerUpdateRequest extends WorkerUpdateRequest {
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
  final String? iban;
  @override
  final int? dateOfBirth;
  @override
  final String? ssn;
  @override
  final BuiltList<dynamic>? tagIds;

  factory _$WorkerUpdateRequest(
          [void Function(WorkerUpdateRequestBuilder)? updates]) =>
      (new WorkerUpdateRequestBuilder()..update(updates))._build();

  _$WorkerUpdateRequest._(
      {this.email,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.profilePictureUrl,
      this.address,
      this.iban,
      this.dateOfBirth,
      this.ssn,
      this.tagIds})
      : super._();

  @override
  WorkerUpdateRequest rebuild(
          void Function(WorkerUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkerUpdateRequestBuilder toBuilder() =>
      new WorkerUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkerUpdateRequest &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        profilePictureUrl == other.profilePictureUrl &&
        address == other.address &&
        iban == other.iban &&
        dateOfBirth == other.dateOfBirth &&
        ssn == other.ssn &&
        tagIds == other.tagIds;
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
    _$hash = $jc(_$hash, iban.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, ssn.hashCode);
    _$hash = $jc(_$hash, tagIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkerUpdateRequest')
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('profilePictureUrl', profilePictureUrl)
          ..add('address', address)
          ..add('iban', iban)
          ..add('dateOfBirth', dateOfBirth)
          ..add('ssn', ssn)
          ..add('tagIds', tagIds))
        .toString();
  }
}

class WorkerUpdateRequestBuilder
    implements Builder<WorkerUpdateRequest, WorkerUpdateRequestBuilder> {
  _$WorkerUpdateRequest? _$v;

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

  String? _iban;
  String? get iban => _$this._iban;
  set iban(String? iban) => _$this._iban = iban;

  int? _dateOfBirth;
  int? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(int? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _ssn;
  String? get ssn => _$this._ssn;
  set ssn(String? ssn) => _$this._ssn = ssn;

  ListBuilder<dynamic>? _tagIds;
  ListBuilder<dynamic> get tagIds =>
      _$this._tagIds ??= new ListBuilder<dynamic>();
  set tagIds(ListBuilder<dynamic>? tagIds) => _$this._tagIds = tagIds;

  WorkerUpdateRequestBuilder();

  WorkerUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _profilePictureUrl = $v.profilePictureUrl;
      _address = $v.address?.toBuilder();
      _iban = $v.iban;
      _dateOfBirth = $v.dateOfBirth;
      _ssn = $v.ssn;
      _tagIds = $v.tagIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkerUpdateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkerUpdateRequest;
  }

  @override
  void update(void Function(WorkerUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkerUpdateRequest build() => _build();

  _$WorkerUpdateRequest _build() {
    _$WorkerUpdateRequest _$result;
    try {
      _$result = _$v ??
          new _$WorkerUpdateRequest._(
              email: email,
              phoneNumber: phoneNumber,
              firstName: firstName,
              lastName: lastName,
              profilePictureUrl: profilePictureUrl,
              address: _address?.build(),
              iban: iban,
              dateOfBirth: dateOfBirth,
              ssn: ssn,
              tagIds: _tagIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();

        _$failedField = 'tagIds';
        _tagIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkerUpdateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
