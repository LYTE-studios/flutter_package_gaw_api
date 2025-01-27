// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_job_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreateJobRequest> _$createJobRequestSerializer =
    new _$CreateJobRequestSerializer();

class _$CreateJobRequestSerializer
    implements StructuredSerializer<CreateJobRequest> {
  @override
  final Iterable<Type> types = const [CreateJobRequest, _$CreateJobRequest];
  @override
  final String wireName = 'CreateJobRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, CreateJobRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(Address)),
      'start_time',
      serializers.serialize(object.startTime,
          specifiedType: const FullType(int)),
      'end_time',
      serializers.serialize(object.endTime, specifiedType: const FullType(int)),
      'customer_id',
      serializers.serialize(object.customerId,
          specifiedType: const FullType(String)),
      'max_workers',
      serializers.serialize(object.maxworkers,
          specifiedType: const FullType(int)),
    ];
    Object? value;
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
    return result;
  }

  @override
  CreateJobRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreateJobRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'max_workers':
          result.maxworkers = serializers.deserialize(value,
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
        case 'is_draft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$CreateJobRequest extends CreateJobRequest {
  @override
  final String title;
  @override
  final String? description;
  @override
  final Address address;
  @override
  final int startTime;
  @override
  final int endTime;
  @override
  final String customerId;
  @override
  final int maxworkers;
  @override
  final int? applicationStartTime;
  @override
  final int? applicationEndTime;
  @override
  final bool? isDraft;

  factory _$CreateJobRequest(
          [void Function(CreateJobRequestBuilder)? updates]) =>
      (new CreateJobRequestBuilder()..update(updates))._build();

  _$CreateJobRequest._(
      {required this.title,
      this.description,
      required this.address,
      required this.startTime,
      required this.endTime,
      required this.customerId,
      required this.maxworkers,
      this.applicationStartTime,
      this.applicationEndTime,
      this.isDraft})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, r'CreateJobRequest', 'title');
    BuiltValueNullFieldError.checkNotNull(
        address, r'CreateJobRequest', 'address');
    BuiltValueNullFieldError.checkNotNull(
        startTime, r'CreateJobRequest', 'startTime');
    BuiltValueNullFieldError.checkNotNull(
        endTime, r'CreateJobRequest', 'endTime');
    BuiltValueNullFieldError.checkNotNull(
        customerId, r'CreateJobRequest', 'customerId');
    BuiltValueNullFieldError.checkNotNull(
        maxworkers, r'CreateJobRequest', 'maxworkers');
  }

  @override
  CreateJobRequest rebuild(void Function(CreateJobRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateJobRequestBuilder toBuilder() =>
      new CreateJobRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateJobRequest &&
        title == other.title &&
        description == other.description &&
        address == other.address &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        customerId == other.customerId &&
        maxworkers == other.maxworkers &&
        applicationStartTime == other.applicationStartTime &&
        applicationEndTime == other.applicationEndTime &&
        isDraft == other.isDraft;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, maxworkers.hashCode);
    _$hash = $jc(_$hash, applicationStartTime.hashCode);
    _$hash = $jc(_$hash, applicationEndTime.hashCode);
    _$hash = $jc(_$hash, isDraft.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateJobRequest')
          ..add('title', title)
          ..add('description', description)
          ..add('address', address)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('customerId', customerId)
          ..add('maxworkers', maxworkers)
          ..add('applicationStartTime', applicationStartTime)
          ..add('applicationEndTime', applicationEndTime)
          ..add('isDraft', isDraft))
        .toString();
  }
}

class CreateJobRequestBuilder
    implements Builder<CreateJobRequest, CreateJobRequestBuilder> {
  _$CreateJobRequest? _$v;

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

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  int? _maxworkers;
  int? get maxworkers => _$this._maxworkers;
  set maxworkers(int? maxworkers) => _$this._maxworkers = maxworkers;

  int? _applicationStartTime;
  int? get applicationStartTime => _$this._applicationStartTime;
  set applicationStartTime(int? applicationStartTime) =>
      _$this._applicationStartTime = applicationStartTime;

  int? _applicationEndTime;
  int? get applicationEndTime => _$this._applicationEndTime;
  set applicationEndTime(int? applicationEndTime) =>
      _$this._applicationEndTime = applicationEndTime;

  bool? _isDraft;
  bool? get isDraft => _$this._isDraft;
  set isDraft(bool? isDraft) => _$this._isDraft = isDraft;

  CreateJobRequestBuilder();

  CreateJobRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _address = $v.address.toBuilder();
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _customerId = $v.customerId;
      _maxworkers = $v.maxworkers;
      _applicationStartTime = $v.applicationStartTime;
      _applicationEndTime = $v.applicationEndTime;
      _isDraft = $v.isDraft;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateJobRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateJobRequest;
  }

  @override
  void update(void Function(CreateJobRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateJobRequest build() => _build();

  _$CreateJobRequest _build() {
    _$CreateJobRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateJobRequest._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, r'CreateJobRequest', 'title'),
              description: description,
              address: address.build(),
              startTime: BuiltValueNullFieldError.checkNotNull(
                  startTime, r'CreateJobRequest', 'startTime'),
              endTime: BuiltValueNullFieldError.checkNotNull(
                  endTime, r'CreateJobRequest', 'endTime'),
              customerId: BuiltValueNullFieldError.checkNotNull(
                  customerId, r'CreateJobRequest', 'customerId'),
              maxworkers: BuiltValueNullFieldError.checkNotNull(
                  maxworkers, r'CreateJobRequest', 'maxworkers'),
              applicationStartTime: applicationStartTime,
              applicationEndTime: applicationEndTime,
              isDraft: isDraft);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        address.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateJobRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
