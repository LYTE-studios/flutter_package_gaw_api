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
      'worker',
      serializers.serialize(object.worker,
          specifiedType: const FullType(Worker)),
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contract;
    if (value != null) {
      result
        ..add('contract')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        case 'worker':
          result.worker.replace(serializers.deserialize(value,
              specifiedType: const FullType(Worker))! as Worker);
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
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'contract':
          result.contract = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final Worker worker;
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
  @override
  final int? createdAt;
  @override
  final String? note;
  @override
  final String? contract;

  factory _$JobApplication([void Function(JobApplicationBuilder)? updates]) =>
      (new JobApplicationBuilder()..update(updates))._build();

  _$JobApplication._(
      {this.id,
      required this.worker,
      required this.job,
      required this.address,
      required this.state,
      this.distance,
      required this.noTravelCosts,
      this.createdAt,
      this.note,
      this.contract})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(worker, r'JobApplication', 'worker');
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
        worker == other.worker &&
        job == other.job &&
        address == other.address &&
        state == other.state &&
        distance == other.distance &&
        noTravelCosts == other.noTravelCosts &&
        createdAt == other.createdAt &&
        note == other.note &&
        contract == other.contract;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, worker.hashCode);
    _$hash = $jc(_$hash, job.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jc(_$hash, noTravelCosts.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JobApplication')
          ..add('id', id)
          ..add('worker', worker)
          ..add('job', job)
          ..add('address', address)
          ..add('state', state)
          ..add('distance', distance)
          ..add('noTravelCosts', noTravelCosts)
          ..add('createdAt', createdAt)
          ..add('note', note)
          ..add('contract', contract))
        .toString();
  }
}

class JobApplicationBuilder
    implements Builder<JobApplication, JobApplicationBuilder> {
  _$JobApplication? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  WorkerBuilder? _worker;
  WorkerBuilder get worker => _$this._worker ??= new WorkerBuilder();
  set worker(WorkerBuilder? worker) => _$this._worker = worker;

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

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  JobApplicationBuilder();

  JobApplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _worker = $v.worker.toBuilder();
      _job = $v.job.toBuilder();
      _address = $v.address.toBuilder();
      _state = $v.state;
      _distance = $v.distance;
      _noTravelCosts = $v.noTravelCosts;
      _createdAt = $v.createdAt;
      _note = $v.note;
      _contract = $v.contract;
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
              worker: worker.build(),
              job: job.build(),
              address: address.build(),
              state: BuiltValueNullFieldError.checkNotNull(
                  state, r'JobApplication', 'state'),
              distance: distance,
              noTravelCosts: BuiltValueNullFieldError.checkNotNull(
                  noTravelCosts, r'JobApplication', 'noTravelCosts'),
              createdAt: createdAt,
              note: note,
              contract: contract);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'worker';
        worker.build();
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
