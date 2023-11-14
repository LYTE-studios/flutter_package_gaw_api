// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_registration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TimeRegistrationResponse> _$timeRegistrationResponseSerializer =
    new _$TimeRegistrationResponseSerializer();

class _$TimeRegistrationResponseSerializer
    implements StructuredSerializer<TimeRegistrationResponse> {
  @override
  final Iterable<Type> types = const [
    TimeRegistrationResponse,
    _$TimeRegistrationResponse
  ];
  @override
  final String wireName = 'TimeRegistrationResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TimeRegistrationResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'job_id',
      serializers.serialize(object.jobId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TimeRegistrationResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TimeRegistrationResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'job_id':
          result.jobId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TimeRegistrationResponse extends TimeRegistrationResponse {
  @override
  final String jobId;

  factory _$TimeRegistrationResponse(
          [void Function(TimeRegistrationResponseBuilder)? updates]) =>
      (new TimeRegistrationResponseBuilder()..update(updates))._build();

  _$TimeRegistrationResponse._({required this.jobId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'TimeRegistrationResponse', 'jobId');
  }

  @override
  TimeRegistrationResponse rebuild(
          void Function(TimeRegistrationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimeRegistrationResponseBuilder toBuilder() =>
      new TimeRegistrationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeRegistrationResponse && jobId == other.jobId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeRegistrationResponse')
          ..add('jobId', jobId))
        .toString();
  }
}

class TimeRegistrationResponseBuilder
    implements
        Builder<TimeRegistrationResponse, TimeRegistrationResponseBuilder> {
  _$TimeRegistrationResponse? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  TimeRegistrationResponseBuilder();

  TimeRegistrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeRegistrationResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TimeRegistrationResponse;
  }

  @override
  void update(void Function(TimeRegistrationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeRegistrationResponse build() => _build();

  _$TimeRegistrationResponse _build() {
    final _$result = _$v ??
        new _$TimeRegistrationResponse._(
            jobId: BuiltValueNullFieldError.checkNotNull(
                jobId, r'TimeRegistrationResponse', 'jobId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
