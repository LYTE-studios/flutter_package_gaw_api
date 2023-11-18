library application_list_response;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'application_list_response.g.dart';

abstract class ApplicationListResponse
    implements Built<ApplicationListResponse, ApplicationListResponseBuilder> {
  ApplicationListResponse._();

  factory ApplicationListResponse(
          [Function(ApplicationListResponseBuilder b) updates]) =
      _$ApplicationListResponse;

  @BuiltValueField(wireName: 'applications')
  BuiltList<JobApplication> get applications;

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
