// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmailRequest> _$emailRequestSerializer =
    new _$EmailRequestSerializer();

class _$EmailRequestSerializer implements StructuredSerializer<EmailRequest> {
  @override
  final Iterable<Type> types = const [EmailRequest, _$EmailRequest];
  @override
  final String wireName = 'EmailRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmailRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EmailRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmailRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EmailRequest extends EmailRequest {
  @override
  final String email;

  factory _$EmailRequest([void Function(EmailRequestBuilder)? updates]) =>
      (new EmailRequestBuilder()..update(updates))._build();

  _$EmailRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, r'EmailRequest', 'email');
  }

  @override
  EmailRequest rebuild(void Function(EmailRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailRequestBuilder toBuilder() => new EmailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailRequest')..add('email', email))
        .toString();
  }
}

class EmailRequestBuilder
    implements Builder<EmailRequest, EmailRequestBuilder> {
  _$EmailRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  EmailRequestBuilder();

  EmailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailRequest;
  }

  @override
  void update(void Function(EmailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailRequest build() => _build();

  _$EmailRequest _build() {
    final _$result = _$v ??
        new _$EmailRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'EmailRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
