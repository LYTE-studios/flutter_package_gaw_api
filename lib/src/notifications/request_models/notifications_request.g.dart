// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsRequest> _$notificationsRequestSerializer =
    new _$NotificationsRequestSerializer();

class _$NotificationsRequestSerializer
    implements StructuredSerializer<NotificationsRequest> {
  @override
  final Iterable<Type> types = const [
    NotificationsRequest,
    _$NotificationsRequest
  ];
  @override
  final String wireName = 'NotificationsRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'is_global',
      serializers.serialize(object.isGlobal,
          specifiedType: const FullType(bool)),
      'send_mail',
      serializers.serialize(object.sendMail,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_global':
          result.isGlobal = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'send_mail':
          result.sendMail = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsRequest extends NotificationsRequest {
  @override
  final String title;
  @override
  final String description;
  @override
  final String? userId;
  @override
  final bool isGlobal;
  @override
  final bool sendMail;

  factory _$NotificationsRequest(
          [void Function(NotificationsRequestBuilder)? updates]) =>
      (new NotificationsRequestBuilder()..update(updates))._build();

  _$NotificationsRequest._(
      {required this.title,
      required this.description,
      this.userId,
      required this.isGlobal,
      required this.sendMail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        title, r'NotificationsRequest', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, r'NotificationsRequest', 'description');
    BuiltValueNullFieldError.checkNotNull(
        isGlobal, r'NotificationsRequest', 'isGlobal');
    BuiltValueNullFieldError.checkNotNull(
        sendMail, r'NotificationsRequest', 'sendMail');
  }

  @override
  NotificationsRequest rebuild(
          void Function(NotificationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsRequestBuilder toBuilder() =>
      new NotificationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsRequest &&
        title == other.title &&
        description == other.description &&
        userId == other.userId &&
        isGlobal == other.isGlobal &&
        sendMail == other.sendMail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, isGlobal.hashCode);
    _$hash = $jc(_$hash, sendMail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsRequest')
          ..add('title', title)
          ..add('description', description)
          ..add('userId', userId)
          ..add('isGlobal', isGlobal)
          ..add('sendMail', sendMail))
        .toString();
  }
}

class NotificationsRequestBuilder
    implements Builder<NotificationsRequest, NotificationsRequestBuilder> {
  _$NotificationsRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _isGlobal;
  bool? get isGlobal => _$this._isGlobal;
  set isGlobal(bool? isGlobal) => _$this._isGlobal = isGlobal;

  bool? _sendMail;
  bool? get sendMail => _$this._sendMail;
  set sendMail(bool? sendMail) => _$this._sendMail = sendMail;

  NotificationsRequestBuilder();

  NotificationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _userId = $v.userId;
      _isGlobal = $v.isGlobal;
      _sendMail = $v.sendMail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsRequest;
  }

  @override
  void update(void Function(NotificationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsRequest build() => _build();

  _$NotificationsRequest _build() {
    final _$result = _$v ??
        new _$NotificationsRequest._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'NotificationsRequest', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'NotificationsRequest', 'description'),
            userId: userId,
            isGlobal: BuiltValueNullFieldError.checkNotNull(
                isGlobal, r'NotificationsRequest', 'isGlobal'),
            sendMail: BuiltValueNullFieldError.checkNotNull(
                sendMail, r'NotificationsRequest', 'sendMail'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
