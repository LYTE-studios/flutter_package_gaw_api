// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_job_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UpdateJobRequest> _$updateJobRequestSerializer =
    new _$UpdateJobRequestSerializer();

class _$UpdateJobRequestSerializer
    implements StructuredSerializer<UpdateJobRequest> {
  @override
  final Iterable<Type> types = const [UpdateJobRequest, _$UpdateJobRequest];
  @override
  final String wireName = 'UpdateJobRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, UpdateJobRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Address)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxWashers;
    if (value != null) {
      result
        ..add('max_washers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UpdateJobRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UpdateJobRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
              specifiedType: const FullType(int)) as int?;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'max_washers':
          result.maxWashers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UpdateJobRequest extends UpdateJobRequest {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final Address? address;
  @override
  final int? startTime;
  @override
  final int? endTime;
  @override
  final String? customerId;
  @override
  final int? maxWashers;
  @override
  final int? applicationStartTime;
  @override
  final int? applicationEndTime;
  @override
  final bool? isDraft;

  factory _$UpdateJobRequest(
          [void Function(UpdateJobRequestBuilder)? updates]) =>
      (new UpdateJobRequestBuilder()..update(updates))._build();

  _$UpdateJobRequest._(
      {this.title,
      this.description,
      this.address,
      this.startTime,
      this.endTime,
      this.customerId,
      this.maxWashers,
      this.applicationStartTime,
      this.applicationEndTime,
      this.isDraft})
      : super._();

  @override
  UpdateJobRequest rebuild(void Function(UpdateJobRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateJobRequestBuilder toBuilder() =>
      new UpdateJobRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateJobRequest &&
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
    return (newBuiltValueToStringHelper(r'UpdateJobRequest')
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

class UpdateJobRequestBuilder
    implements Builder<UpdateJobRequest, UpdateJobRequestBuilder> {
  _$UpdateJobRequest? _$v;

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

  int? _maxWashers;
  int? get maxWashers => _$this._maxWashers;
  set maxWashers(int? maxWashers) => _$this._maxWashers = maxWashers;

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

  UpdateJobRequestBuilder();

  UpdateJobRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _address = $v.address?.toBuilder();
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
  void replace(UpdateJobRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateJobRequest;
  }

  @override
  void update(void Function(UpdateJobRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateJobRequest build() => _build();

  _$UpdateJobRequest _build() {
    _$UpdateJobRequest _$result;
    try {
      _$result = _$v ??
          new _$UpdateJobRequest._(
              title: title,
              description: description,
              address: _address?.build(),
              startTime: startTime,
              endTime: endTime,
              customerId: customerId,
              maxWashers: maxWashers,
              applicationStartTime: applicationStartTime,
              applicationEndTime: applicationEndTime,
              isDraft: isDraft);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateJobRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
