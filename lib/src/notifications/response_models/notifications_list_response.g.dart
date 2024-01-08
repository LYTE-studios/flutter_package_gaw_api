// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsListResponse> _$notificationsListResponseSerializer =
    new _$NotificationsListResponseSerializer();

class _$NotificationsListResponseSerializer
    implements StructuredSerializer<NotificationsListResponse> {
  @override
  final Iterable<Type> types = const [
    NotificationsListResponse,
    _$NotificationsListResponse
  ];
  @override
  final String wireName = 'NotificationsListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.notifications;
    if (value != null) {
      result
        ..add('notifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(Notification)])));
    }
    return result;
  }

  @override
  NotificationsListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notifications':
          result.notifications.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Notification)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsListResponse extends NotificationsListResponse {
  @override
  final BuiltList<Notification>? notifications;

  factory _$NotificationsListResponse(
          [void Function(NotificationsListResponseBuilder)? updates]) =>
      (new NotificationsListResponseBuilder()..update(updates))._build();

  _$NotificationsListResponse._({this.notifications}) : super._();

  @override
  NotificationsListResponse rebuild(
          void Function(NotificationsListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsListResponseBuilder toBuilder() =>
      new NotificationsListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsListResponse &&
        notifications == other.notifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsListResponse')
          ..add('notifications', notifications))
        .toString();
  }
}

class NotificationsListResponseBuilder
    implements
        Builder<NotificationsListResponse, NotificationsListResponseBuilder> {
  _$NotificationsListResponse? _$v;

  ListBuilder<Notification>? _notifications;
  ListBuilder<Notification> get notifications =>
      _$this._notifications ??= new ListBuilder<Notification>();
  set notifications(ListBuilder<Notification>? notifications) =>
      _$this._notifications = notifications;

  NotificationsListResponseBuilder();

  NotificationsListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notifications = $v.notifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsListResponse;
  }

  @override
  void update(void Function(NotificationsListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsListResponse build() => _build();

  _$NotificationsListResponse _build() {
    _$NotificationsListResponse _$result;
    try {
      _$result = _$v ??
          new _$NotificationsListResponse._(
              notifications: _notifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifications';
        _notifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NotificationsListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
