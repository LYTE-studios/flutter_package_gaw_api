// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_expiry_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SessionExpiryResponse> _$sessionExpiryResponseSerializer =
    new _$SessionExpiryResponseSerializer();

class _$SessionExpiryResponseSerializer
    implements StructuredSerializer<SessionExpiryResponse> {
  @override
  final Iterable<Type> types = const [
    SessionExpiryResponse,
    _$SessionExpiryResponse
  ];
  @override
  final String wireName = 'SessionExpiryResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SessionExpiryResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sessionExpiry;
    if (value != null) {
      result
        ..add('session_expiry')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sessionDuration;
    if (value != null) {
      result
        ..add('session_duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  SessionExpiryResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionExpiryResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'session_expiry':
          result.sessionExpiry = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'session_duration':
          result.sessionDuration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$SessionExpiryResponse extends SessionExpiryResponse {
  @override
  final int? sessionExpiry;
  @override
  final int? sessionDuration;

  factory _$SessionExpiryResponse(
          [void Function(SessionExpiryResponseBuilder)? updates]) =>
      (new SessionExpiryResponseBuilder()..update(updates))._build();

  _$SessionExpiryResponse._({this.sessionExpiry, this.sessionDuration})
      : super._();

  @override
  SessionExpiryResponse rebuild(
          void Function(SessionExpiryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionExpiryResponseBuilder toBuilder() =>
      new SessionExpiryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionExpiryResponse &&
        sessionExpiry == other.sessionExpiry &&
        sessionDuration == other.sessionDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionExpiry.hashCode);
    _$hash = $jc(_$hash, sessionDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionExpiryResponse')
          ..add('sessionExpiry', sessionExpiry)
          ..add('sessionDuration', sessionDuration))
        .toString();
  }
}

class SessionExpiryResponseBuilder
    implements Builder<SessionExpiryResponse, SessionExpiryResponseBuilder> {
  _$SessionExpiryResponse? _$v;

  int? _sessionExpiry;
  int? get sessionExpiry => _$this._sessionExpiry;
  set sessionExpiry(int? sessionExpiry) =>
      _$this._sessionExpiry = sessionExpiry;

  int? _sessionDuration;
  int? get sessionDuration => _$this._sessionDuration;
  set sessionDuration(int? sessionDuration) =>
      _$this._sessionDuration = sessionDuration;

  SessionExpiryResponseBuilder();

  SessionExpiryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionExpiry = $v.sessionExpiry;
      _sessionDuration = $v.sessionDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionExpiryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SessionExpiryResponse;
  }

  @override
  void update(void Function(SessionExpiryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionExpiryResponse build() => _build();

  _$SessionExpiryResponse _build() {
    final _$result = _$v ??
        new _$SessionExpiryResponse._(
            sessionExpiry: sessionExpiry, sessionDuration: sessionDuration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
