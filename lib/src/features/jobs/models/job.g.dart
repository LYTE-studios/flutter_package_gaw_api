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
      'customer',
      serializers.serialize(object.customer,
          specifiedType: const FullType(Customer)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(JobState)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
        case 'customer':
          result.customer.replace(serializers.deserialize(value,
              specifiedType: const FullType(Customer))! as Customer);
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address))! as Address);
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(JobState))! as JobState;
          break;
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

class _$Job extends Job {
  @override
  final String? id;
  @override
  final Customer customer;
  @override
  final Address address;
  @override
  final JobState state;
  @override
  final JobApplication? application;

  factory _$Job([void Function(JobBuilder)? updates]) =>
      (new JobBuilder()..update(updates))._build();

  _$Job._(
      {this.id,
      required this.customer,
      required this.address,
      required this.state,
      this.application})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(customer, r'Job', 'customer');
    BuiltValueNullFieldError.checkNotNull(address, r'Job', 'address');
    BuiltValueNullFieldError.checkNotNull(state, r'Job', 'state');
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
        customer == other.customer &&
        address == other.address &&
        state == other.state &&
        application == other.application;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, customer.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, application.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Job')
          ..add('id', id)
          ..add('customer', customer)
          ..add('address', address)
          ..add('state', state)
          ..add('application', application))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder> {
  _$Job? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  CustomerBuilder? _customer;
  CustomerBuilder get customer => _$this._customer ??= new CustomerBuilder();
  set customer(CustomerBuilder? customer) => _$this._customer = customer;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder? address) => _$this._address = address;

  JobState? _state;
  JobState? get state => _$this._state;
  set state(JobState? state) => _$this._state = state;

  JobApplicationBuilder? _application;
  JobApplicationBuilder get application =>
      _$this._application ??= new JobApplicationBuilder();
  set application(JobApplicationBuilder? application) =>
      _$this._application = application;

  JobBuilder();

  JobBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _customer = $v.customer.toBuilder();
      _address = $v.address.toBuilder();
      _state = $v.state;
      _application = $v.application?.toBuilder();
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
              customer: customer.build(),
              address: address.build(),
              state:
                  BuiltValueNullFieldError.checkNotNull(state, r'Job', 'state'),
              application: _application?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customer';
        customer.build();
        _$failedField = 'address';
        address.build();

        _$failedField = 'application';
        _application?.build();
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
