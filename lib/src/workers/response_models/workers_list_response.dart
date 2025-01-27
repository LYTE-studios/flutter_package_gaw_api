import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'workers_list_response.g.dart';

abstract class WorkersListResponse
    implements Built<WorkersListResponse, WorkersListResponseBuilder> {
  WorkersListResponse._();

  factory WorkersListResponse(
      [Function(WorkersListResponseBuilder b) updates]) = _$WorkersListResponse;

  @BuiltValueField(wireName: 'workers')
  BuiltList<Worker> get workers;

  @BuiltValueField(wireName: 'items_per_page')
  int? get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int? get total;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WorkersListResponse.serializer, this));
  }

  static WorkersListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WorkersListResponse.serializer,
      data,
    );
  }

  static Serializer<WorkersListResponse> get serializer =>
      _$workersListResponseSerializer;
}
