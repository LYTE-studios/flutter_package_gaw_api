// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Customer> _$customerSerializer = new _$CustomerSerializer();

class _$CustomerSerializer implements StructuredSerializer<Customer> {
  @override
  final Iterable<Type> types = const [Customer, _$Customer];
  @override
  final String wireName = 'Customer';

  @override
  Iterable<Object?> serialize(Serializers serializers, Customer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'initials',
      serializers.serialize(object.initials,
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
        ..add('profile_picture_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Customer deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerBuilder();

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
        case 'initials':
          result.initials = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$Customer extends Customer {
  @override
  final String? id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String initials;
  @override
  final String? company;
  @override
  final String? profilePictureUrl;

  factory _$Customer([void Function(CustomerBuilder)? updates]) =>
      (new CustomerBuilder()..update(updates))._build();

  _$Customer._(
      {this.id,
      required this.firstName,
      required this.lastName,
      required this.initials,
      this.company,
      this.profilePictureUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(firstName, r'Customer', 'firstName');
    BuiltValueNullFieldError.checkNotNull(lastName, r'Customer', 'lastName');
    BuiltValueNullFieldError.checkNotNull(initials, r'Customer', 'initials');
  }

  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => new CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        initials == other.initials &&
        company == other.company &&
        profilePictureUrl == other.profilePictureUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, initials.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Customer')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('initials', initials)
          ..add('company', company)
          ..add('profilePictureUrl', profilePictureUrl))
        .toString();
  }
}

class CustomerBuilder implements Builder<Customer, CustomerBuilder> {
  _$Customer? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  CustomerBuilder();

  CustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _initials = $v.initials;
      _company = $v.company;
      _profilePictureUrl = $v.profilePictureUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Customer other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Customer;
  }

  @override
  void update(void Function(CustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Customer build() => _build();

  _$Customer _build() {
    final _$result = _$v ??
        new _$Customer._(
            id: id,
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'Customer', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'Customer', 'lastName'),
            initials: BuiltValueNullFieldError.checkNotNull(
                initials, r'Customer', 'initials'),
            company: company,
            profilePictureUrl: profilePictureUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
