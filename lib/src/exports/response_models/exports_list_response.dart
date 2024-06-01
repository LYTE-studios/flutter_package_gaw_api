library exports_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'exports_list_response.g.dart';

abstract class ExportsListResponse
    implements Built<ExportsListResponse, ExportsListResponseBuilder> {
  ExportsListResponse._();

  factory ExportsListResponse(
      [Function(ExportsListResponseBuilder b) updates]) = _$ExportsListResponse;

  @BuiltValueField(wireName: 'exports')
  BuiltList<Export>? get exports;

  @BuiltValueField(wireName: 'items_per_page')
  int? get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int? get total;

  String toJson() {
    return json.encode(
      serializers.serializeWith(ExportsListResponse.serializer, this),
    );
  }

  static ExportsListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      ExportsListResponse.serializer,
      data,
    );
  }

  static Serializer<ExportsListResponse> get serializer =>
      _$exportsListResponseSerializer;
}
