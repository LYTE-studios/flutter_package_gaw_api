// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsUpdateRequest> _$notificationsUpdateRequestSerializer =
    new _$NotificationsUpdateRequestSerializer();

class _$NotificationsUpdateRequestSerializer
    implements StructuredSerializer<NotificationsUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    NotificationsUpdateRequest,
    _$NotificationsUpdateRequest
  ];
  @override
  final String wireName = 'NotificationsUpdateRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsUpdateRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'seen',
      serializers.serialize(object.seen, specifiedType: const FullType(bool)),
      'archived',
      serializers.serialize(object.archived,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  NotificationsUpdateRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsUpdateRequestBuilder();

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
        case 'seen':
          result.seen = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsUpdateRequest extends NotificationsUpdateRequest {
  @override
  final String id;
  @override
  final bool seen;
  @override
  final bool archived;

  factory _$NotificationsUpdateRequest(
          [void Function(NotificationsUpdateRequestBuilder)? updates]) =>
      (new NotificationsUpdateRequestBuilder()..update(updates))._build();

  _$NotificationsUpdateRequest._(
      {required this.id, required this.seen, required this.archived})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'NotificationsUpdateRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(
        seen, r'NotificationsUpdateRequest', 'seen');
    BuiltValueNullFieldError.checkNotNull(
        archived, r'NotificationsUpdateRequest', 'archived');
  }

  @override
  NotificationsUpdateRequest rebuild(
          void Function(NotificationsUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsUpdateRequestBuilder toBuilder() =>
      new NotificationsUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsUpdateRequest &&
        id == other.id &&
        seen == other.seen &&
        archived == other.archived;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, seen.hashCode);
    _$hash = $jc(_$hash, archived.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsUpdateRequest')
          ..add('id', id)
          ..add('seen', seen)
          ..add('archived', archived))
        .toString();
  }
}

class NotificationsUpdateRequestBuilder
    implements
        Builder<NotificationsUpdateRequest, NotificationsUpdateRequestBuilder> {
  _$NotificationsUpdateRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _seen;
  bool? get seen => _$this._seen;
  set seen(bool? seen) => _$this._seen = seen;

  bool? _archived;
  bool? get archived => _$this._archived;
  set archived(bool? archived) => _$this._archived = archived;

  NotificationsUpdateRequestBuilder();

  NotificationsUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _seen = $v.seen;
      _archived = $v.archived;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsUpdateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsUpdateRequest;
  }

  @override
  void update(void Function(NotificationsUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsUpdateRequest build() => _build();

  _$NotificationsUpdateRequest _build() {
    final _$result = _$v ??
        new _$NotificationsUpdateRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'NotificationsUpdateRequest', 'id'),
            seen: BuiltValueNullFieldError.checkNotNull(
                seen, r'NotificationsUpdateRequest', 'seen'),
            archived: BuiltValueNullFieldError.checkNotNull(
                archived, r'NotificationsUpdateRequest', 'archived'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
