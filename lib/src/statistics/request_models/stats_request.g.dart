// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatsRequest> _$statsRequestSerializer =
    new _$StatsRequestSerializer();

class _$StatsRequestSerializer implements StructuredSerializer<StatsRequest> {
  @override
  final Iterable<Type> types = const [StatsRequest, _$StatsRequest];
  @override
  final String wireName = 'StatsRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'worker_id',
      serializers.serialize(object.workerId,
          specifiedType: const FullType(String)),
      'time_frame',
      serializers.serialize(object.timeFrame,
          specifiedType: const FullType(TimeFrame)),
    ];

    return result;
  }

  @override
  StatsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatsRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'worker_id':
          result.workerId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time_frame':
          result.timeFrame = serializers.deserialize(value,
              specifiedType: const FullType(TimeFrame))! as TimeFrame;
          break;
      }
    }

    return result.build();
  }
}

class _$StatsRequest extends StatsRequest {
  @override
  final String workerId;
  @override
  final TimeFrame timeFrame;

  factory _$StatsRequest([void Function(StatsRequestBuilder)? updates]) =>
      (new StatsRequestBuilder()..update(updates))._build();

  _$StatsRequest._({required this.workerId, required this.timeFrame})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        workerId, r'StatsRequest', 'workerId');
    BuiltValueNullFieldError.checkNotNull(
        timeFrame, r'StatsRequest', 'timeFrame');
  }

  @override
  StatsRequest rebuild(void Function(StatsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsRequestBuilder toBuilder() => new StatsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsRequest &&
        workerId == other.workerId &&
        timeFrame == other.timeFrame;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, workerId.hashCode);
    _$hash = $jc(_$hash, timeFrame.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsRequest')
          ..add('workerId', workerId)
          ..add('timeFrame', timeFrame))
        .toString();
  }
}

class StatsRequestBuilder
    implements Builder<StatsRequest, StatsRequestBuilder> {
  _$StatsRequest? _$v;

  String? _workerId;
  String? get workerId => _$this._workerId;
  set workerId(String? workerId) => _$this._workerId = workerId;

  TimeFrame? _timeFrame;
  TimeFrame? get timeFrame => _$this._timeFrame;
  set timeFrame(TimeFrame? timeFrame) => _$this._timeFrame = timeFrame;

  StatsRequestBuilder();

  StatsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _workerId = $v.workerId;
      _timeFrame = $v.timeFrame;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatsRequest;
  }

  @override
  void update(void Function(StatsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsRequest build() => _build();

  _$StatsRequest _build() {
    final _$result = _$v ??
        new _$StatsRequest._(
            workerId: BuiltValueNullFieldError.checkNotNull(
                workerId, r'StatsRequest', 'workerId'),
            timeFrame: BuiltValueNullFieldError.checkNotNull(
                timeFrame, r'StatsRequest', 'timeFrame'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
