// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateCustomerResponse> _$createCustomerResponseSerializer =
    new _$CreateCustomerResponseSerializer();

class _$CreateCustomerResponseSerializer
    implements StructuredSerializer<CreateCustomerResponse> {
  @override
  final Iterable<Type> types = const [
    CreateCustomerResponse,
    _$CreateCustomerResponse
  ];
  @override
  final String wireName = 'CreateCustomerResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CreateCustomerResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'customer_id',
      serializers.serialize(object.customerId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CreateCustomerResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateCustomerResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateCustomerResponse extends CreateCustomerResponse {
  @override
  final String customerId;

  factory _$CreateCustomerResponse(
          [void Function(CreateCustomerResponseBuilder)? updates]) =>
      (new CreateCustomerResponseBuilder()..update(updates))._build();

  _$CreateCustomerResponse._({required this.customerId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        customerId, r'CreateCustomerResponse', 'customerId');
  }

  @override
  CreateCustomerResponse rebuild(
          void Function(CreateCustomerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCustomerResponseBuilder toBuilder() =>
      new CreateCustomerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCustomerResponse && customerId == other.customerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCustomerResponse')
          ..add('customerId', customerId))
        .toString();
  }
}

class CreateCustomerResponseBuilder
    implements Builder<CreateCustomerResponse, CreateCustomerResponseBuilder> {
  _$CreateCustomerResponse? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  CreateCustomerResponseBuilder();

  CreateCustomerResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCustomerResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCustomerResponse;
  }

  @override
  void update(void Function(CreateCustomerResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCustomerResponse build() => _build();

  _$CreateCustomerResponse _build() {
    final _$result = _$v ??
        new _$CreateCustomerResponse._(
            customerId: BuiltValueNullFieldError.checkNotNull(
                customerId, r'CreateCustomerResponse', 'customerId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
