// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workers_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkersListResponse> _$workersListResponseSerializer =
    new _$WorkersListResponseSerializer();

class _$WorkersListResponseSerializer
    implements StructuredSerializer<WorkersListResponse> {
  @override
  final Iterable<Type> types = const [
    WorkersListResponse,
    _$WorkersListResponse
  ];
  @override
  final String wireName = 'WorkersListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WorkersListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'workers',
      serializers.serialize(object.workers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Worker)])),
    ];
    Object? value;
    value = object.itemsPerPage;
    if (value != null) {
      result
        ..add('items_per_page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WorkersListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkersListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'workers':
          result.workers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Worker)]))!
              as BuiltList<Object?>);
          break;
        case 'items_per_page':
          result.itemsPerPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$WorkersListResponse extends WorkersListResponse {
  @override
  final BuiltList<Worker> workers;
  @override
  final int? itemsPerPage;
  @override
  final int? total;

  factory _$WorkersListResponse(
          [void Function(WorkersListResponseBuilder)? updates]) =>
      (new WorkersListResponseBuilder()..update(updates))._build();

  _$WorkersListResponse._(
      {required this.workers, this.itemsPerPage, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workers, r'WorkersListResponse', 'workers');
  }

  @override
  WorkersListResponse rebuild(
          void Function(WorkersListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkersListResponseBuilder toBuilder() =>
      new WorkersListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkersListResponse &&
        workers == other.workers &&
        itemsPerPage == other.itemsPerPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workers.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkersListResponse')
          ..add('workers', workers)
          ..add('itemsPerPage', itemsPerPage)
          ..add('total', total))
        .toString();
  }
}

class WorkersListResponseBuilder
    implements Builder<WorkersListResponse, WorkersListResponseBuilder> {
  _$WorkersListResponse? _$v;

  ListBuilder<Worker>? _workers;
  ListBuilder<Worker> get workers =>
      _$this._workers ??= new ListBuilder<Worker>();
  set workers(ListBuilder<Worker>? workers) => _$this._workers = workers;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  WorkersListResponseBuilder();

  WorkersListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workers = $v.workers.toBuilder();
      _itemsPerPage = $v.itemsPerPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkersListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkersListResponse;
  }

  @override
  void update(void Function(WorkersListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkersListResponse build() => _build();

  _$WorkersListResponse _build() {
    _$WorkersListResponse _$result;
    try {
      _$result = _$v ??
          new _$WorkersListResponse._(
              workers: workers.build(),
              itemsPerPage: itemsPerPage,
              total: total);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'workers';
        workers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkersListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
