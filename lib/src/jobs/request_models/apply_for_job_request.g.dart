// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_for_job_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplyForJobRequest> _$applyForJobRequestSerializer =
    new _$ApplyForJobRequestSerializer();

class _$ApplyForJobRequestSerializer
    implements StructuredSerializer<ApplyForJobRequest> {
  @override
  final Iterable<Type> types = const [ApplyForJobRequest, _$ApplyForJobRequest];
  @override
  final String wireName = 'ApplyForJobRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApplyForJobRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'job_id',
      serializers.serialize(object.jobId,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'no_travel_costs',
      serializers.serialize(object.noTravelCosts,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ApplyForJobRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplyForJobRequestBuilder();

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
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'no_travel_costs':
          result.noTravelCosts = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$ApplyForJobRequest extends ApplyForJobRequest {
  @override
  final String jobId;
  @override
  final Address address;
  @override
  final bool noTravelCosts;
  @override
  final String? note;
  @override
  final double? distance;

  factory _$ApplyForJobRequest(
          [void Function(ApplyForJobRequestBuilder)? updates]) =>
      (new ApplyForJobRequestBuilder()..update(updates))._build();

  _$ApplyForJobRequest._(
      {required this.jobId,
      required this.address,
      required this.noTravelCosts,
      this.note,
      this.distance})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        jobId, r'ApplyForJobRequest', 'jobId');
    BuiltValueNullFieldError.checkNotNull(
        address, r'ApplyForJobRequest', 'address');
    BuiltValueNullFieldError.checkNotNull(
        noTravelCosts, r'ApplyForJobRequest', 'noTravelCosts');
  }

  @override
  ApplyForJobRequest rebuild(
          void Function(ApplyForJobRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplyForJobRequestBuilder toBuilder() =>
      new ApplyForJobRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplyForJobRequest &&
        jobId == other.jobId &&
        address == other.address &&
        noTravelCosts == other.noTravelCosts &&
        note == other.note &&
        distance == other.distance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jobId.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, noTravelCosts.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplyForJobRequest')
          ..add('jobId', jobId)
          ..add('address', address)
          ..add('noTravelCosts', noTravelCosts)
          ..add('note', note)
          ..add('distance', distance))
        .toString();
  }
}

class ApplyForJobRequestBuilder
    implements Builder<ApplyForJobRequest, ApplyForJobRequestBuilder> {
  _$ApplyForJobRequest? _$v;

  String? _jobId;
  String? get jobId => _$this._jobId;
  set jobId(String? jobId) => _$this._jobId = jobId;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  bool? _noTravelCosts;
  bool? get noTravelCosts => _$this._noTravelCosts;
  set noTravelCosts(bool? noTravelCosts) =>
      _$this._noTravelCosts = noTravelCosts;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  double? _distance;
  double? get distance => _$this._distance;
  set distance(double? distance) => _$this._distance = distance;

  ApplyForJobRequestBuilder();

  ApplyForJobRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jobId = $v.jobId;
      _address = $v.address.toBuilder();
      _noTravelCosts = $v.noTravelCosts;
      _note = $v.note;
      _distance = $v.distance;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplyForJobRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplyForJobRequest;
  }

  @override
  void update(void Function(ApplyForJobRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplyForJobRequest build() => _build();

  _$ApplyForJobRequest _build() {
    _$ApplyForJobRequest _$result;
    try {
      _$result = _$v ??
          new _$ApplyForJobRequest._(
              jobId: BuiltValueNullFieldError.checkNotNull(
                  jobId, r'ApplyForJobRequest', 'jobId'),
              address: address.build(),
              noTravelCosts: BuiltValueNullFieldError.checkNotNull(
                  noTravelCosts, r'ApplyForJobRequest', 'noTravelCosts'),
              note: note,
              distance: distance);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApplyForJobRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
