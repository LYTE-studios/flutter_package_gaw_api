// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_based_jobs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserBasedJobsRequest> _$userBasedJobsRequestSerializer =
    new _$UserBasedJobsRequestSerializer();

class _$UserBasedJobsRequestSerializer
    implements StructuredSerializer<UserBasedJobsRequest> {
  @override
  final Iterable<Type> types = const [
    UserBasedJobsRequest,
    _$UserBasedJobsRequest
  ];
  @override
  final String wireName = 'UserBasedJobsRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserBasedJobsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.washerId;
    if (value != null) {
      result
        ..add('washer_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserBasedJobsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBasedJobsRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'washer_id':
          result.washerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserBasedJobsRequest extends UserBasedJobsRequest {
  @override
  final String? washerId;
  @override
  final String? customerId;

  factory _$UserBasedJobsRequest(
          [void Function(UserBasedJobsRequestBuilder)? updates]) =>
      (new UserBasedJobsRequestBuilder()..update(updates))._build();

  _$UserBasedJobsRequest._({this.washerId, this.customerId}) : super._();

  @override
  UserBasedJobsRequest rebuild(
          void Function(UserBasedJobsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBasedJobsRequestBuilder toBuilder() =>
      new UserBasedJobsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserBasedJobsRequest &&
        washerId == other.washerId &&
        customerId == other.customerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, washerId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserBasedJobsRequest')
          ..add('washerId', washerId)
          ..add('customerId', customerId))
        .toString();
  }
}

class UserBasedJobsRequestBuilder
    implements Builder<UserBasedJobsRequest, UserBasedJobsRequestBuilder> {
  _$UserBasedJobsRequest? _$v;

  String? _washerId;
  String? get washerId => _$this._washerId;
  set washerId(String? washerId) => _$this._washerId = washerId;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  UserBasedJobsRequestBuilder();

  UserBasedJobsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _washerId = $v.washerId;
      _customerId = $v.customerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserBasedJobsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserBasedJobsRequest;
  }

  @override
  void update(void Function(UserBasedJobsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserBasedJobsRequest build() => _build();

  _$UserBasedJobsRequest _build() {
    final _$result = _$v ??
        new _$UserBasedJobsRequest._(
            washerId: washerId, customerId: customerId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
