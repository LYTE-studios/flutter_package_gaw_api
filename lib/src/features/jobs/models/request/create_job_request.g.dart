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
          specifiedType: const FullType(String)),
      'end_time',
      serializers.serialize(object.endTime,
          specifiedType: const FullType(String)),
      'customer_id',
      serializers.serialize(object.customerId,
          specifiedType: const FullType(String)),
      'max_washers',
      serializers.serialize(object.maxWashers,
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
            serializers.serialize(value, specifiedType: const FullType(Bool)));
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
              specifiedType: const FullType(String))! as String;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'max_washers':
          result.maxWashers = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'application_start_time':
          result.applicationStartTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'application_end_time':
          result.applicationEndTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_draft':
          result.isDraft = serializers.deserialize(value,
              specifiedType: const FullType(Bool)) as Bool?;
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
  final String startTime;
  @override
  final String endTime;
  @override
  final String customerId;
  @override
  final int maxWashers;
  @override
  final String? applicationStartTime;
  @override
  final String? applicationEndTime;
  @override
  final Bool? isDraft;

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
      required this.maxWashers,
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
        maxWashers, r'CreateJobRequest', 'maxWashers');
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
        maxWashers == other.maxWashers &&
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
    _$hash = $jc(_$hash, maxWashers.hashCode);
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
          ..add('maxWashers', maxWashers)
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

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  int? _maxWashers;
  int? get maxWashers => _$this._maxWashers;
  set maxWashers(int? maxWashers) => _$this._maxWashers = maxWashers;

  String? _applicationStartTime;
  String? get applicationStartTime => _$this._applicationStartTime;
  set applicationStartTime(String? applicationStartTime) =>
      _$this._applicationStartTime = applicationStartTime;

  String? _applicationEndTime;
  String? get applicationEndTime => _$this._applicationEndTime;
  set applicationEndTime(String? applicationEndTime) =>
      _$this._applicationEndTime = applicationEndTime;

  Bool? _isDraft;
  Bool? get isDraft => _$this._isDraft;
  set isDraft(Bool? isDraft) => _$this._isDraft = isDraft;

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
      _maxWashers = $v.maxWashers;
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
              maxWashers: BuiltValueNullFieldError.checkNotNull(
                  maxWashers, r'CreateJobRequest', 'maxWashers'),
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
