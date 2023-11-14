// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateUserResponse> _$updateUserResponseSerializer =
    new _$UpdateUserResponseSerializer();

class _$UpdateUserResponseSerializer
    implements StructuredSerializer<UpdateUserResponse> {
  @override
  final Iterable<Type> types = const [UpdateUserResponse, _$UpdateUserResponse];
  @override
  final String wireName = 'UpdateUserResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UpdateUserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'user_id',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UpdateUserResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateUserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UpdateUserResponse extends UpdateUserResponse {
  @override
  final String userId;

  factory _$UpdateUserResponse(
          [void Function(UpdateUserResponseBuilder)? updates]) =>
      (new UpdateUserResponseBuilder()..update(updates))._build();

  _$UpdateUserResponse._({required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'UpdateUserResponse', 'userId');
  }

  @override
  UpdateUserResponse rebuild(
          void Function(UpdateUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserResponseBuilder toBuilder() =>
      new UpdateUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserResponse && userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUserResponse')
          ..add('userId', userId))
        .toString();
  }
}

class UpdateUserResponseBuilder
    implements Builder<UpdateUserResponse, UpdateUserResponseBuilder> {
  _$UpdateUserResponse? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  UpdateUserResponseBuilder();

  UpdateUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserResponse;
  }

  @override
  void update(void Function(UpdateUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUserResponse build() => _build();

  _$UpdateUserResponse _build() {
    final _$result = _$v ??
        new _$UpdateUserResponse._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, r'UpdateUserResponse', 'userId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
