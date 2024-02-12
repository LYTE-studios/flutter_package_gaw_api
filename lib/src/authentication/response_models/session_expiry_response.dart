library session_expiry;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'session_expiry_response.g.dart';

abstract class SessionExpiryResponse
    implements Built<SessionExpiryResponse, SessionExpiryResponseBuilder> {
  SessionExpiryResponse._();

  factory SessionExpiryResponse(
          [Function(SessionExpiryResponseBuilder b) updates]) =
      _$SessionExpiryResponse;

  @BuiltValueField(wireName: 'session_expiry')
  int? get sessionExpiry;

  @BuiltValueField(wireName: 'session_duration')
  int? get sessionDuration;

  String toJson() {
    return json.encode(
        serializers.serializeWith(SessionExpiryResponse.serializer, this));
  }

  static SessionExpiryResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      SessionExpiryResponse.serializer,
      data,
    );
  }

  static Serializer<SessionExpiryResponse> get serializer =>
      _$sessionExpiryResponseSerializer;
}
