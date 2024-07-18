// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobListResponse> _$jobListResponseSerializer =
    new _$JobListResponseSerializer();

class _$JobListResponseSerializer
    implements StructuredSerializer<JobListResponse> {
  @override
  final Iterable<Type> types = const [JobListResponse, _$JobListResponse];
  @override
  final String wireName = 'JobListResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobListResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.jobs;
    if (value != null) {
      result
        ..add('jobs')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Job)])));
    }
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
  JobListResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobListResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'jobs':
          result.jobs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Job)]))!
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

class _$JobListResponse extends JobListResponse {
  @override
  final BuiltList<Job>? jobs;
  @override
  final int? itemsPerPage;
  @override
  final int? total;

  factory _$JobListResponse([void Function(JobListResponseBuilder)? updates]) =>
      (new JobListResponseBuilder()..update(updates))._build();

  _$JobListResponse._({this.jobs, this.itemsPerPage, this.total}) : super._();

  @override
  JobListResponse rebuild(void Function(JobListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobListResponseBuilder toBuilder() =>
      new JobListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobListResponse &&
        jobs == other.jobs &&
        itemsPerPage == other.itemsPerPage &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobs.hashCode);
    _$hash = $jc(_$hash, itemsPerPage.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobListResponse')
          ..add('jobs', jobs)
          ..add('itemsPerPage', itemsPerPage)
          ..add('total', total))
        .toString();
  }
}

class JobListResponseBuilder
    implements Builder<JobListResponse, JobListResponseBuilder> {
  _$JobListResponse? _$v;

  ListBuilder<Job>? _jobs;
  ListBuilder<Job> get jobs => _$this._jobs ??= new ListBuilder<Job>();
  set jobs(ListBuilder<Job>? jobs) => _$this._jobs = jobs;

  int? _itemsPerPage;
  int? get itemsPerPage => _$this._itemsPerPage;
  set itemsPerPage(int? itemsPerPage) => _$this._itemsPerPage = itemsPerPage;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  JobListResponseBuilder();

  JobListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobs = $v.jobs?.toBuilder();
      _itemsPerPage = $v.itemsPerPage;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobListResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobListResponse;
  }

  @override
  void update(void Function(JobListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobListResponse build() => _build();

  _$JobListResponse _build() {
    _$JobListResponse _$result;
    try {
      _$result = _$v ??
          new _$JobListResponse._(
              jobs: _jobs?.build(), itemsPerPage: itemsPerPage, total: total);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jobs';
        _jobs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JobListResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
