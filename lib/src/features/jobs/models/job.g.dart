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
          specifiedType: const FullType(String)),
      'end_time',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(String)),
      'max_washers',
      serializers.serialize(object.maxWashers,
          specifiedType: const FullType(int)),
      'selected_washers',
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationEndTime;
    if (value != null) {
      result
        ..add('application_end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDraft;
    if (value != null) {
      result
        ..add('is_draft')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
              specifiedType: const FullType(String))! as String;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'application_start_time':
          result.applicationStartTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'application_end_time':
          result.applicationEndTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'max_washers':
          result.maxWashers = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'selected_washers':
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
  final String startTime;
  @override
  final String endTime;
  @override
  final String? applicationStartTime;
  @override
  final String? applicationEndTime;
  @override
  final int maxWashers;
  @override
  final int selectedWashers;
  @override
  final bool? isDraft;
  @override
  final JobState state;
  @override
  final Customer customer;

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
      required this.maxWashers,
      required this.selectedWashers,
      this.isDraft,
      required this.state,
      required this.customer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, r'Job', 'address');
    BuiltValueNullFieldError.checkNotNull(startTime, r'Job', 'startTime');
    BuiltValueNullFieldError.checkNotNull(endTime, r'Job', 'endTime');
    BuiltValueNullFieldError.checkNotNull(maxWashers, r'Job', 'maxWashers');
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
        maxWashers == other.maxWashers &&
        selectedWashers == other.selectedWashers &&
        isDraft == other.isDraft &&
        state == other.state &&
        customer == other.customer;
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
    _$hash = $jc(_$hash, maxWashers.hashCode);
    _$hash = $jc(_$hash, selectedWashers.hashCode);
    _$hash = $jc(_$hash, isDraft.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
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
          ..add('maxWashers', maxWashers)
          ..add('selectedWashers', selectedWashers)
          ..add('isDraft', isDraft)
          ..add('state', state)
          ..add('customer', customer))
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

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _applicationStartTime;
  String? get applicationStartTime => _$this._applicationStartTime;
  set applicationStartTime(String? applicationStartTime) =>
      _$this._applicationStartTime = applicationStartTime;

  String? _applicationEndTime;
  String? get applicationEndTime => _$this._applicationEndTime;
  set applicationEndTime(String? applicationEndTime) =>
      _$this._applicationEndTime = applicationEndTime;

  int? _maxWashers;
  int? get maxWashers => _$this._maxWashers;
  set maxWashers(int? maxWashers) => _$this._maxWashers = maxWashers;

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
      _maxWashers = $v.maxWashers;
      _selectedWashers = $v.selectedWashers;
      _isDraft = $v.isDraft;
      _state = $v.state;
      _customer = $v.customer.toBuilder();
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
              maxWashers: BuiltValueNullFieldError.checkNotNull(
                  maxWashers, r'Job', 'maxWashers'),
              selectedWashers: BuiltValueNullFieldError.checkNotNull(
                  selectedWashers, r'Job', 'selectedWashers'),
              isDraft: isDraft,
              state:
                  BuiltValueNullFieldError.checkNotNull(state, r'Job', 'state'),
              customer: customer.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();

        _$failedField = 'customer';
        customer.build();
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
