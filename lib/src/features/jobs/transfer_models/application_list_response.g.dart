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
      }
    }

    return result.build();
  }
}

class _$ApplicationListResponse extends ApplicationListResponse {
  @override
  final BuiltList<JobApplication> applications;

  factory _$ApplicationListResponse(
          [void Function(ApplicationListResponseBuilder)? updates]) =>
      (new ApplicationListResponseBuilder()..update(updates))._build();

  _$ApplicationListResponse._({required this.applications}) : super._() {
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
        applications == other.applications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, applications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationListResponse')
          ..add('applications', applications))
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

  ApplicationListResponseBuilder();

  ApplicationListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _applications = $v.applications.toBuilder();
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
          new _$ApplicationListResponse._(applications: applications.build());
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
