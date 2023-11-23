// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_there_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HelloThereResponse> _$helloThereResponseSerializer =
    new _$HelloThereResponseSerializer();

class _$HelloThereResponseSerializer
    implements StructuredSerializer<HelloThereResponse> {
  @override
  final Iterable<Type> types = const [HelloThereResponse, _$HelloThereResponse];
  @override
  final String wireName = 'HelloThereResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HelloThereResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'first_name',
      serializers.serialize(object.firstName,
          specifiedType: const FullType(String)),
      'last_name',
      serializers.serialize(object.lastName,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'profile_picture',
      serializers.serialize(object.profilePictureUrl,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HelloThereResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HelloThereResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
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
        case 'profile_picture':
          result.profilePictureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HelloThereResponse extends HelloThereResponse {
  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String profilePictureUrl;

  factory _$HelloThereResponse(
          [void Function(HelloThereResponseBuilder)? updates]) =>
      (new HelloThereResponseBuilder()..update(updates))._build();

  _$HelloThereResponse._(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.profilePictureUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'HelloThereResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        firstName, r'HelloThereResponse', 'firstName');
    BuiltValueNullFieldError.checkNotNull(
        lastName, r'HelloThereResponse', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        email, r'HelloThereResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        profilePictureUrl, r'HelloThereResponse', 'profilePictureUrl');
  }

  @override
  HelloThereResponse rebuild(
          void Function(HelloThereResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HelloThereResponseBuilder toBuilder() =>
      new HelloThereResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HelloThereResponse &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        profilePictureUrl == other.profilePictureUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HelloThereResponse')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('profilePictureUrl', profilePictureUrl))
        .toString();
  }
}

class HelloThereResponseBuilder
    implements Builder<HelloThereResponse, HelloThereResponseBuilder> {
  _$HelloThereResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _profilePictureUrl;
  String? get profilePictureUrl => _$this._profilePictureUrl;
  set profilePictureUrl(String? profilePictureUrl) =>
      _$this._profilePictureUrl = profilePictureUrl;

  HelloThereResponseBuilder();

  HelloThereResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _profilePictureUrl = $v.profilePictureUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HelloThereResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HelloThereResponse;
  }

  @override
  void update(void Function(HelloThereResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HelloThereResponse build() => _build();

  _$HelloThereResponse _build() {
    final _$result = _$v ??
        new _$HelloThereResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'HelloThereResponse', 'id'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, r'HelloThereResponse', 'firstName'),
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, r'HelloThereResponse', 'lastName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'HelloThereResponse', 'email'),
            profilePictureUrl: BuiltValueNullFieldError.checkNotNull(
                profilePictureUrl, r'HelloThereResponse', 'profilePictureUrl'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
