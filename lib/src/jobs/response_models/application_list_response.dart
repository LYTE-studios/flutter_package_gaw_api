library application_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'application_list_response.g.dart';

abstract class ApplicationListResponse
    implements Built<ApplicationListResponse, ApplicationListResponseBuilder> {
  ApplicationListResponse._();

  factory ApplicationListResponse(
          [Function(ApplicationListResponseBuilder b) updates]) =
      _$ApplicationListResponse;

  @BuiltValueField(wireName: 'applications')
  BuiltList<JobApplication> get applications;

  @BuiltValueField(wireName: 'items_per_page')
  int? get itemsPerPage;

  @BuiltValueField(wireName: 'total')
  int? get total;

  String toJson() {
    return json.encode(
      serializers.serializeWith(ApplicationListResponse.serializer, this),
    );
  }

  static ApplicationListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      ApplicationListResponse.serializer,
      data,
    );
  }

  static Serializer<ApplicationListResponse> get serializer =>
      _$applicationListResponseSerializer;
}
