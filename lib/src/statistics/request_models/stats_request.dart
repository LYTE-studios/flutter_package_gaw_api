import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'stats_request.g.dart';

abstract class StatsRequest
    implements Built<StatsRequest, StatsRequestBuilder> {
  StatsRequest._();

  factory StatsRequest([void Function(StatsRequestBuilder) updates]) =
      _$StatsRequest;

  @BuiltValueField(wireName: 'worker_id')
  String get workerId;

  @BuiltValueField(wireName: 'time_frame')
  TimeFrame get timeFrame;

  String toJson() {
    return json.encode(
      serializers.serializeWith(StatsRequest.serializer, this),
    );
  }

  static StatsRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      StatsRequest.serializer,
      data,
    );
  }

  static Serializer<StatsRequest> get serializer => _$statsRequestSerializer;
}
