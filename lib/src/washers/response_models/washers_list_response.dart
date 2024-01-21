import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/src/washers/models/washer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'washers_list_response.g.dart';

abstract class WashersListResponse
    implements Built<WashersListResponse, WashersListResponseBuilder> {
  WashersListResponse._();

  factory WashersListResponse(
      [Function(WashersListResponseBuilder b) updates]) = _$WashersListResponse;

  @BuiltValueField(wireName: 'washers')
  BuiltList<Washer> get washers;

  @BuiltValueField(wireName: 'items_per_page')
  int? get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int? get total;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WashersListResponse.serializer, this));
  }

  static WashersListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WashersListResponse.serializer,
      data,
    );
  }

  static Serializer<WashersListResponse> get serializer =>
      _$washersListResponseSerializer;
}
