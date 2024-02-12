library session_expiry_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'session_expiry_request.g.dart';

abstract class SessionExpiryRequest
    implements Built<SessionExpiryRequest, SessionExpiryRequestBuilder> {
  SessionExpiryRequest._();

  factory SessionExpiryRequest(
          [Function(SessionExpiryRequestBuilder b) updates]) =
      _$SessionExpiryRequest;

  @BuiltValueField(wireName: 'session_duration')
  int? get sessionDuration;

  String toJson() {
    return json.encode(
        serializers.serializeWith(SessionExpiryRequest.serializer, this));
  }

  static SessionExpiryRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      SessionExpiryRequest.serializer,
      data,
    );
  }

  static Serializer<SessionExpiryRequest> get serializer =>
      _$sessionExpiryRequestSerializer;
}
