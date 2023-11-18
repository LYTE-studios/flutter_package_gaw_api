import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/features/washers/enums/time_frame.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'stats_request.g.dart';

abstract class StatsRequest
    implements Built<StatsRequest, StatsRequestBuilder> {
  StatsRequest._();

  factory StatsRequest([void Function(StatsRequestBuilder) updates]) =
      _$StatsRequest;

  @BuiltValueField(wireName: 'washer_id')
  String get washerId;

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
