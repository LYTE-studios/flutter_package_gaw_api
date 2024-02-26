// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationResponse> _$applicationResponseSerializer =
    new _$ApplicationResponseSerializer();

class _$ApplicationResponseSerializer
    implements StructuredSerializer<ApplicationResponse> {
  @override
  final Iterable<Type> types = const [
    ApplicationResponse,
    _$ApplicationResponse
  ];
  @override
  final String wireName = 'ApplicationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApplicationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.application;
    if (value != null) {
      result
        ..add('application')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(JobApplication)));
    }
    return result;
  }

  @override
  ApplicationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'application':
          result.application.replace(serializers.deserialize(value,
                  specifiedType: const FullType(JobApplication))!
              as JobApplication);
          break;
      }
    }

    return result.build();
  }
}

class _$ApplicationResponse extends ApplicationResponse {
  @override
  final JobApplication? application;

  factory _$ApplicationResponse(
          [void Function(ApplicationResponseBuilder)? updates]) =>
      (new ApplicationResponseBuilder()..update(updates))._build();

  _$ApplicationResponse._({this.application}) : super._();

  @override
  ApplicationResponse rebuild(
          void Function(ApplicationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationResponseBuilder toBuilder() =>
      new ApplicationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationResponse && application == other.application;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, application.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationResponse')
          ..add('application', application))
        .toString();
  }
}

class ApplicationResponseBuilder
    implements Builder<ApplicationResponse, ApplicationResponseBuilder> {
  _$ApplicationResponse? _$v;

  JobApplicationBuilder? _application;
  JobApplicationBuilder get application =>
      _$this._application ??= new JobApplicationBuilder();
  set application(JobApplicationBuilder? application) =>
      _$this._application = application;

  ApplicationResponseBuilder();

  ApplicationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _application = $v.application?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationResponse;
  }

  @override
  void update(void Function(ApplicationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationResponse build() => _build();

  _$ApplicationResponse _build() {
    _$ApplicationResponse _$result;
    try {
      _$result = _$v ??
          new _$ApplicationResponse._(application: _application?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'application';
        _application?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplicationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
