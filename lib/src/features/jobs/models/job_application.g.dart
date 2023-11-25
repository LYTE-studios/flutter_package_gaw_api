// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JobApplication> _$jobApplicationSerializer =
    new _$JobApplicationSerializer();

class _$JobApplicationSerializer
    implements StructuredSerializer<JobApplication> {
  @override
  final Iterable<Type> types = const [JobApplication, _$JobApplication];
  @override
  final String wireName = 'JobApplication';

  @override
  Iterable<Object?> serialize(Serializers serializers, JobApplication object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'washer',
      serializers.serialize(object.washer,
          specifiedType: const FullType(Washer)),
      'job',
      serializers.serialize(object.job, specifiedType: const FullType(Job)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(JobApplicationState)),
      'no_travel_costs',
      serializers.serialize(object.noTravelCosts,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
  JobApplication deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobApplicationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'washer':
          result.washer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Washer))! as Washer);
          break;
        case 'job':
          result.job.replace(serializers.deserialize(value,
              specifiedType: const FullType(Job))! as Job);
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(JobApplicationState))!
              as JobApplicationState;
          break;
        case 'distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'no_travel_costs':
          result.noTravelCosts = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$JobApplication extends JobApplication {
  @override
  final String? id;
  @override
  final Washer washer;
  @override
  final Job job;
  @override
  final Address address;
  @override
  final JobApplicationState state;
  @override
  final double? distance;
  @override
  final bool noTravelCosts;

  factory _$JobApplication([void Function(JobApplicationBuilder)? updates]) =>
      (new JobApplicationBuilder()..update(updates))._build();

  _$JobApplication._(
      {this.id,
      required this.washer,
      required this.job,
      required this.address,
      required this.state,
      this.distance,
      required this.noTravelCosts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(washer, r'JobApplication', 'washer');
    BuiltValueNullFieldError.checkNotNull(job, r'JobApplication', 'job');
    BuiltValueNullFieldError.checkNotNull(
        address, r'JobApplication', 'address');
    BuiltValueNullFieldError.checkNotNull(state, r'JobApplication', 'state');
    BuiltValueNullFieldError.checkNotNull(
        noTravelCosts, r'JobApplication', 'noTravelCosts');
  }

  @override
  JobApplication rebuild(void Function(JobApplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobApplicationBuilder toBuilder() =>
      new JobApplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JobApplication &&
        id == other.id &&
        washer == other.washer &&
        job == other.job &&
        address == other.address &&
        state == other.state &&
        distance == other.distance &&
        noTravelCosts == other.noTravelCosts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, washer.hashCode);
    _$hash = $jc(_$hash, job.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jc(_$hash, noTravelCosts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobApplication')
          ..add('id', id)
          ..add('washer', washer)
          ..add('job', job)
          ..add('address', address)
          ..add('state', state)
          ..add('distance', distance)
          ..add('noTravelCosts', noTravelCosts))
        .toString();
  }
}

class JobApplicationBuilder
    implements Builder<JobApplication, JobApplicationBuilder> {
  _$JobApplication? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  WasherBuilder? _washer;
  WasherBuilder get washer => _$this._washer ??= new WasherBuilder();
  set washer(WasherBuilder? washer) => _$this._washer = washer;

  JobBuilder? _job;
  JobBuilder get job => _$this._job ??= new JobBuilder();
  set job(JobBuilder? job) => _$this._job = job;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  JobApplicationState? _state;
  JobApplicationState? get state => _$this._state;
  set state(JobApplicationState? state) => _$this._state = state;

  double? _distance;
  double? get distance => _$this._distance;
  set distance(double? distance) => _$this._distance = distance;

  bool? _noTravelCosts;
  bool? get noTravelCosts => _$this._noTravelCosts;
  set noTravelCosts(bool? noTravelCosts) =>
      _$this._noTravelCosts = noTravelCosts;

  JobApplicationBuilder();

  JobApplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _washer = $v.washer.toBuilder();
      _job = $v.job.toBuilder();
      _address = $v.address.toBuilder();
      _state = $v.state;
      _distance = $v.distance;
      _noTravelCosts = $v.noTravelCosts;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JobApplication other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JobApplication;
  }

  @override
  void update(void Function(JobApplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JobApplication build() => _build();

  _$JobApplication _build() {
    _$JobApplication _$result;
    try {
      _$result = _$v ??
          new _$JobApplication._(
              id: id,
              washer: washer.build(),
              job: job.build(),
              address: address.build(),
              state: BuiltValueNullFieldError.checkNotNull(
                  state, r'JobApplication', 'state'),
              distance: distance,
              noTravelCosts: BuiltValueNullFieldError.checkNotNull(
                  noTravelCosts, r'JobApplication', 'noTravelCosts'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'washer';
        washer.build();
        _$failedField = 'job';
        job.build();
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JobApplication', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
