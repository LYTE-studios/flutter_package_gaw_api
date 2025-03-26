import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'dimona_list_response.g.dart';

abstract class DimonaListResponse
    implements Built<DimonaListResponse, DimonaListResponseBuilder> {
  DimonaListResponse._();

  factory DimonaListResponse([Function(DimonaListResponseBuilder b) updates]) =
      _$DimonaListResponse;

  @BuiltValueField(wireName: 'dimonas')
  BuiltList<Dimona> get dimonas;

  @BuiltValueField(wireName: 'items_per_page')
  int? get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int? get total;

  String toJson() {
    return json
        .encode(serializers.serializeWith(DimonaListResponse.serializer, this));
  }

  static DimonaListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      DimonaListResponse.serializer,
      data,
    );
  }

  static Serializer<DimonaListResponse> get serializer =>
      _$dimonaListResponseSerializer;
}
