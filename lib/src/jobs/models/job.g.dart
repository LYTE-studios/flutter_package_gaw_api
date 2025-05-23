// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Job> _$jobSerializer = new _$JobSerializer();

class _$JobSerializer implements StructuredSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];
  @override
  final String wireName = 'Job';

  @override
  Iterable<Object?> serialize(Serializers serializers, Job object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'start_time',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(int)),
      'end_time',
      serializers.serialize(object.endTime, specifiedType: const FullType(int)),
      'max_workers',
      serializers.serialize(object.maxWorkers,
          specifiedType: const FullType(int)),
      'selected_workers',
      serializers.serialize(object.selectedWashers,
          specifiedType: const FullType(int)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(JobState)),
      'customer',
      serializers.serialize(object.customer,
          specifiedType: const FullType(Customer)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationStartTime;
    if (value != null) {
      result
        ..add('application_start_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.applicationEndTime;
    if (value != null) {
      result
        ..add('application_end_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isDraft;
    if (value != null) {
      result
        ..add('is_draft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.registrations;
    if (value != null) {
      result
        ..add('time_registrations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TimeRegistration)])));
    }
    value = object.tag;
    if (value != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(value, specifiedType: const FullType(Tag)));
    }
    return result;
  }

  @override
  Job deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'application_start_time':
          result.applicationStartTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'application_end_time':
          result.applicationEndTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'max_workers':
          result.maxWorkers = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'selected_workers':
          result.selectedWashers = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'is_draft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(JobState))! as JobState;
          break;
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer))! as Customer);
          break;
        case 'time_registrations':
          result.registrations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TimeRegistration)]))!
              as BuiltList<Object?>);
          break;
        case 'tag':
          result.tag.replace(serializers.deserialize(value,
              specifiedType: const FullType(Tag))! as Tag);
          break;
      }
    }

    return result.build();
  }
}

class _$Job extends Job {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Address address;
  @override
  final int startTime;
  @override
  final int endTime;
  @override
  final int? applicationStartTime;
  @override
  final int? applicationEndTime;
  @override
  final int maxWorkers;
  @override
  final int selectedWashers;
  @override
  final bool? isDraft;
  @override
  final JobState state;
  @override
  final Customer customer;
  @override
  final BuiltList<TimeRegistration>? registrations;
  @override
  final Tag? tag;

  factory _$Job([void Function(JobBuilder)? updates]) =>
      (new JobBuilder()..update(updates))._build();

  _$Job._(
      {this.id,
      this.title,
      this.description,
      required this.address,
      required this.startTime,
      required this.endTime,
      this.applicationStartTime,
      this.applicationEndTime,
      required this.maxWorkers,
      required this.selectedWashers,
      this.isDraft,
      required this.state,
      required this.customer,
      this.registrations,
      this.tag})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'Job', 'address');
    BuiltValueNullFieldError.checkNotNull(startTime, r'Job', 'startTime');
    BuiltValueNullFieldError.checkNotNull(endTime, r'Job', 'endTime');
    BuiltValueNullFieldError.checkNotNull(maxWorkers, r'Job', 'maxWorkers');
    BuiltValueNullFieldError.checkNotNull(
        selectedWashers, r'Job', 'selectedWashers');
    BuiltValueNullFieldError.checkNotNull(state, r'Job', 'state');
    BuiltValueNullFieldError.checkNotNull(customer, r'Job', 'customer');
  }

  @override
  Job rebuild(void Function(JobBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JobBuilder toBuilder() => new JobBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Job &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        address == other.address &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        applicationStartTime == other.applicationStartTime &&
        applicationEndTime == other.applicationEndTime &&
        maxWorkers == other.maxWorkers &&
        selectedWashers == other.selectedWashers &&
        isDraft == other.isDraft &&
        state == other.state &&
        customer == other.customer &&
        registrations == other.registrations &&
        tag == other.tag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, applicationStartTime.hashCode);
    _$hash = $jc(_$hash, applicationEndTime.hashCode);
    _$hash = $jc(_$hash, maxWorkers.hashCode);
    _$hash = $jc(_$hash, selectedWashers.hashCode);
    _$hash = $jc(_$hash, isDraft.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, registrations.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Job')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('address', address)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('applicationStartTime', applicationStartTime)
          ..add('applicationEndTime', applicationEndTime)
          ..add('maxWorkers', maxWorkers)
          ..add('selectedWashers', selectedWashers)
          ..add('isDraft', isDraft)
          ..add('state', state)
          ..add('customer', customer)
          ..add('registrations', registrations)
          ..add('tag', tag))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder> {
  _$Job? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  int? _startTime;
  int? get startTime => _$this._startTime;
  set startTime(int? startTime) => _$this._startTime = startTime;

  int? _endTime;
  int? get endTime => _$this._endTime;
  set endTime(int? endTime) => _$this._endTime = endTime;

  int? _applicationStartTime;
  int? get applicationStartTime => _$this._applicationStartTime;
  set applicationStartTime(int? applicationStartTime) =>
      _$this._applicationStartTime = applicationStartTime;

  int? _applicationEndTime;
  int? get applicationEndTime => _$this._applicationEndTime;
  set applicationEndTime(int? applicationEndTime) =>
      _$this._applicationEndTime = applicationEndTime;

  int? _maxWorkers;
  int? get maxWorkers => _$this._maxWorkers;
  set maxWorkers(int? maxWorkers) => _$this._maxWorkers = maxWorkers;

  int? _selectedWashers;
  int? get selectedWashers => _$this._selectedWashers;
  set selectedWashers(int? selectedWashers) =>
      _$this._selectedWashers = selectedWashers;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  JobState? _state;
  JobState? get state => _$this._state;
  set state(JobState? state) => _$this._state = state;

  CustomerBuilder? _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder? customer) => _$this._customer = customer;

  ListBuilder<TimeRegistration>? _registrations;
  ListBuilder<TimeRegistration> get registrations =>
      _$this._registrations ??= new ListBuilder<TimeRegistration>();
  set registrations(ListBuilder<TimeRegistration>? registrations) =>
      _$this._registrations = registrations;

  TagBuilder? _tag;
  TagBuilder get tag => _$this._tag ??= new TagBuilder();
  set tag(TagBuilder? tag) => _$this._tag = tag;

  JobBuilder();

  JobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _address = $v.address.toBuilder();
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _applicationStartTime = $v.applicationStartTime;
      _applicationEndTime = $v.applicationEndTime;
      _maxWorkers = $v.maxWorkers;
      _selectedWashers = $v.selectedWashers;
      _isDraft = $v.isDraft;
      _state = $v.state;
      _customer = $v.customer.toBuilder();
      _registrations = $v.registrations?.toBuilder();
      _tag = $v.tag?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Job other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Job;
  }

  @override
  void update(void Function(JobBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Job build() => _build();

  _$Job _build() {
    _$Job _$result;
    try {
      _$result = _$v ??
          new _$Job._(
              id: id,
              title: title,
              description: description,
              address: address.build(),
              startTime: BuiltValueNullFieldError.checkNotNull(
                  startTime, r'Job', 'startTime'),
              endTime: BuiltValueNullFieldError.checkNotNull(
                  endTime, r'Job', 'endTime'),
              applicationStartTime: applicationStartTime,
              applicationEndTime: applicationEndTime,
              maxWorkers: BuiltValueNullFieldError.checkNotNull(
                  maxWorkers, r'Job', 'maxWorkers'),
              selectedWashers: BuiltValueNullFieldError.checkNotNull(
                  selectedWashers, r'Job', 'selectedWashers'),
              isDraft: isDraft,
              state:
                  BuiltValueNullFieldError.checkNotNull(state, r'Job', 'state'),
              customer: customer.build(),
              registrations: _registrations?.build(),
              tag: _tag?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();

        _$failedField = 'customer';
        customer.build();
        _$failedField = 'registrations';
        _registrations?.build();
        _$failedField = 'tag';
        _tag?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Job', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
