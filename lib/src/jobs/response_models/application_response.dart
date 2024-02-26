library application_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'application_response.g.dart';

abstract class ApplicationResponse
    implements Built<ApplicationResponse, ApplicationResponseBuilder> {
  ApplicationResponse._();

  factory ApplicationResponse(
      [Function(ApplicationResponseBuilder b) updates]) = _$ApplicationResponse;

  @BuiltValueField(wireName: 'application')
  JobApplication? get application;

  String toJson() {
    return json.encode(
      serializers.serializeWith(ApplicationResponse.serializer, this),
    );
  }

  static ApplicationResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      ApplicationResponse.serializer,
      data,
    );
  }

  static Serializer<ApplicationResponse> get serializer =>
      _$applicationResponseSerializer;
}
