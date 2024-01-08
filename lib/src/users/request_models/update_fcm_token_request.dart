library update_language_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'update_fcm_token_request.g.dart';

abstract class UpdateFcmTokenRequest
    implements Built<UpdateFcmTokenRequest, UpdateFcmTokenRequestBuilder> {
  UpdateFcmTokenRequest._();

  factory UpdateFcmTokenRequest(
          [Function(UpdateFcmTokenRequestBuilder b) updates]) =
      _$UpdateFcmTokenRequest;

  @BuiltValueField(wireName: 'fcm_token')
  String get fcmToken;

  String toJson() {
    return json.encode(
      serializers.serializeWith(UpdateFcmTokenRequest.serializer, this),
    );
  }

  static UpdateFcmTokenRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      UpdateFcmTokenRequest.serializer,
      data,
    );
  }

  static Serializer<UpdateFcmTokenRequest> get serializer =>
      _$updateFcmTokenRequestSerializer;
}