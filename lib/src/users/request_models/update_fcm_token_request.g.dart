// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_fcm_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateFcmTokenRequest> _$updateFcmTokenRequestSerializer =
    new _$UpdateFcmTokenRequestSerializer();

class _$UpdateFcmTokenRequestSerializer
    implements StructuredSerializer<UpdateFcmTokenRequest> {
  @override
  final Iterable<Type> types = const [
    UpdateFcmTokenRequest,
    _$UpdateFcmTokenRequest
  ];
  @override
  final String wireName = 'UpdateFcmTokenRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UpdateFcmTokenRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'fcm_token',
      serializers.serialize(object.fcmToken,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UpdateFcmTokenRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateFcmTokenRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fcm_token':
          result.fcmToken = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateFcmTokenRequest extends UpdateFcmTokenRequest {
  @override
  final String fcmToken;

  factory _$UpdateFcmTokenRequest(
          [void Function(UpdateFcmTokenRequestBuilder)? updates]) =>
      (new UpdateFcmTokenRequestBuilder()..update(updates))._build();

  _$UpdateFcmTokenRequest._({required this.fcmToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fcmToken, r'UpdateFcmTokenRequest', 'fcmToken');
  }

  @override
  UpdateFcmTokenRequest rebuild(
          void Function(UpdateFcmTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateFcmTokenRequestBuilder toBuilder() =>
      new UpdateFcmTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateFcmTokenRequest && fcmToken == other.fcmToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateFcmTokenRequest')
          ..add('fcmToken', fcmToken))
        .toString();
  }
}

class UpdateFcmTokenRequestBuilder
    implements Builder<UpdateFcmTokenRequest, UpdateFcmTokenRequestBuilder> {
  _$UpdateFcmTokenRequest? _$v;

  String? _fcmToken;
  String? get fcmToken => _$this._fcmToken;
  set fcmToken(String? fcmToken) => _$this._fcmToken = fcmToken;

  UpdateFcmTokenRequestBuilder();

  UpdateFcmTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmToken = $v.fcmToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateFcmTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateFcmTokenRequest;
  }

  @override
  void update(void Function(UpdateFcmTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateFcmTokenRequest build() => _build();

  _$UpdateFcmTokenRequest _build() {
    final _$result = _$v ??
        new _$UpdateFcmTokenRequest._(
            fcmToken: BuiltValueNullFieldError.checkNotNull(
                fcmToken, r'UpdateFcmTokenRequest', 'fcmToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
