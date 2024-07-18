// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationListResponse> _$applicationListResponseSerializer =
    new _$ApplicationListResponseSerializer();

class _$ApplicationListResponseSerializer
    implements StructuredSerializer<ApplicationListResponse> {
  @override
  final Iterable<Type> types = const [
    ApplicationListResponse,
    _$ApplicationListResponse
  ];
  @override
  final String wireName = 'ApplicationListResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApplicationListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'applications',
      serializers.serialize(object.applications,
          specifiedType: const FullType(
              BuiltList, const [const FullType(JobApplication)])),
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
  ApplicationListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'applications':
          result.applications.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(JobApplication)]))!
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

class _$ApplicationListResponse extends ApplicationListResponse {
  @override
  final BuiltList<JobApplication> applications;
  @override
  final int? itemsPerPage;
  @override
  final int? total;

  factory _$ApplicationListResponse(
          [void Function(ApplicationListResponseBuilder)? updates]) =>
      (new ApplicationListResponseBuilder()..update(updates))._build();

  _$ApplicationListResponse._(
      {required this.applications, this.itemsPerPage, this.total})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        applications, r'ApplicationListResponse', 'applications');
  }

  @override
  ApplicationListResponse rebuild(
          void Function(ApplicationListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationListResponseBuilder toBuilder() =>
      new ApplicationListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationListResponse &&
        applications == other.applications &&
        itemsPerPage == other.itemsPerPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applications.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationListResponse')
          ..add('applications', applications)
          ..add('itemsPerPage', itemsPerPage)
          ..add('total', total))
        .toString();
  }
}

class ApplicationListResponseBuilder
    implements
        Builder<ApplicationListResponse, ApplicationListResponseBuilder> {
  _$ApplicationListResponse? _$v;

  ListBuilder<JobApplication>? _applications;
  ListBuilder<JobApplication> get applications =>
      _$this._applications ??= new ListBuilder<JobApplication>();
  set applications(ListBuilder<JobApplication>? applications) =>
      _$this._applications = applications;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ApplicationListResponseBuilder();

  ApplicationListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applications = $v.applications.toBuilder();
      _itemsPerPage = $v.itemsPerPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationListResponse;
  }

  @override
  void update(void Function(ApplicationListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationListResponse build() => _build();

  _$ApplicationListResponse _build() {
    _$ApplicationListResponse _$result;
    try {
      _$result = _$v ??
          new _$ApplicationListResponse._(
              applications: applications.build(),
              itemsPerPage: itemsPerPage,
              total: total);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'applications';
        applications.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
