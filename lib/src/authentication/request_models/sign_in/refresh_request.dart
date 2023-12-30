library refresh_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'refresh_request.g.dart';

abstract class RefreshRequest
    implements Built<RefreshRequest, RefreshRequestBuilder> {
  // Constructor
  RefreshRequest._();

  // Factory constructor
  factory RefreshRequest([Function(RefreshRequestBuilder b) updates]) =
      _$RefreshRequest;

  // Refresh token field
  @BuiltValueField(wireName: 'refresh')
  String get refreshToken;

  // Convert the object to JSON
  String toJson() {
    return json.encode(
      serializers.serializeWith(RefreshRequest.serializer, this),
    );
  }

  // Deserialize from JSON
  static RefreshRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      RefreshRequest.serializer,
      data,
    );
  }

  // Serializer
  static Serializer<RefreshRequest> get serializer =>
      _$refreshRequestSerializer;
}
