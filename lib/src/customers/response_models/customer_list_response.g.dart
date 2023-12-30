// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomerListResponse> _$customerListResponseSerializer =
    new _$CustomerListResponseSerializer();

class _$CustomerListResponseSerializer
    implements StructuredSerializer<CustomerListResponse> {
  @override
  final Iterable<Type> types = const [
    CustomerListResponse,
    _$CustomerListResponse
  ];
  @override
  final String wireName = 'CustomerListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CustomerListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'customers',
      serializers.serialize(object.customers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Customer)])),
      'items_per_page',
      serializers.serialize(object.itemsPerPage,
          specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  CustomerListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomerListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customers':
          result.customers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Customer)]))!
              as BuiltList<Object?>);
          break;
        case 'items_per_page':
          result.itemsPerPage = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CustomerListResponse extends CustomerListResponse {
  @override
  final BuiltList<Customer> customers;
  @override
  final int itemsPerPage;
  @override
  final int total;

  factory _$CustomerListResponse(
          [void Function(CustomerListResponseBuilder)? updates]) =>
      (new CustomerListResponseBuilder()..update(updates))._build();

  _$CustomerListResponse._(
      {required this.customers,
      required this.itemsPerPage,
      required this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        customers, r'CustomerListResponse', 'customers');
    BuiltValueNullFieldError.checkNotNull(
        itemsPerPage, r'CustomerListResponse', 'itemsPerPage');
    BuiltValueNullFieldError.checkNotNull(
        total, r'CustomerListResponse', 'total');
  }

  @override
  CustomerListResponse rebuild(
          void Function(CustomerListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerListResponseBuilder toBuilder() =>
      new CustomerListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerListResponse &&
        customers == other.customers &&
        itemsPerPage == other.itemsPerPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customers.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerListResponse')
          ..add('customers', customers)
          ..add('itemsPerPage', itemsPerPage)
          ..add('total', total))
        .toString();
  }
}

class CustomerListResponseBuilder
    implements Builder<CustomerListResponse, CustomerListResponseBuilder> {
  _$CustomerListResponse? _$v;

  ListBuilder<Customer>? _customers;
  ListBuilder<Customer> get customers =>
      _$this._customers ??= new ListBuilder<Customer>();
  set customers(ListBuilder<Customer>? customers) =>
      _$this._customers = customers;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  CustomerListResponseBuilder();

  CustomerListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customers = $v.customers.toBuilder();
      _itemsPerPage = $v.itemsPerPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomerListResponse;
  }

  @override
  void update(void Function(CustomerListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerListResponse build() => _build();

  _$CustomerListResponse _build() {
    _$CustomerListResponse _$result;
    try {
      _$result = _$v ??
          new _$CustomerListResponse._(
              customers: customers.build(),
              itemsPerPage: BuiltValueNullFieldError.checkNotNull(
                  itemsPerPage, r'CustomerListResponse', 'itemsPerPage'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, r'CustomerListResponse', 'total'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customers';
        customers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CustomerListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
