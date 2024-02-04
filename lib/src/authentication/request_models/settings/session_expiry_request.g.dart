// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_expiry_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SessionExpiryRequest> _$sessionExpiryRequestSerializer =
    new _$SessionExpiryRequestSerializer();

class _$SessionExpiryRequestSerializer
    implements StructuredSerializer<SessionExpiryRequest> {
  @override
  final Iterable<Type> types = const [
    SessionExpiryRequest,
    _$SessionExpiryRequest
  ];
  @override
  final String wireName = 'SessionExpiryRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SessionExpiryRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sessionDuration;
    if (value != null) {
      result
        ..add('session_duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SessionExpiryRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionExpiryRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'session_duration':
          result.sessionDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$SessionExpiryRequest extends SessionExpiryRequest {
  @override
  final int? sessionDuration;

  factory _$SessionExpiryRequest(
          [void Function(SessionExpiryRequestBuilder)? updates]) =>
      (new SessionExpiryRequestBuilder()..update(updates))._build();

  _$SessionExpiryRequest._({this.sessionDuration}) : super._();

  @override
  SessionExpiryRequest rebuild(
          void Function(SessionExpiryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionExpiryRequestBuilder toBuilder() =>
      new SessionExpiryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionExpiryRequest &&
        sessionDuration == other.sessionDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionExpiryRequest')
          ..add('sessionDuration', sessionDuration))
        .toString();
  }
}

class SessionExpiryRequestBuilder
    implements Builder<SessionExpiryRequest, SessionExpiryRequestBuilder> {
  _$SessionExpiryRequest? _$v;

  int? _sessionDuration;
  int? get sessionDuration => _$this._sessionDuration;
  set sessionDuration(int? sessionDuration) =>
      _$this._sessionDuration = sessionDuration;

  SessionExpiryRequestBuilder();

  SessionExpiryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionDuration = $v.sessionDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionExpiryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessionExpiryRequest;
  }

  @override
  void update(void Function(SessionExpiryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionExpiryRequest build() => _build();

  _$SessionExpiryRequest _build() {
    final _$result =
        _$v ?? new _$SessionExpiryRequest._(sessionDuration: sessionDuration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
