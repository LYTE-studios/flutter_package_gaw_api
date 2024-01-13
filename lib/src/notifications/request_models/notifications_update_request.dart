library notifications_update_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'notifications_update_request.g.dart';

abstract class NotificationsUpdateRequest
    implements
        Built<NotificationsUpdateRequest, NotificationsUpdateRequestBuilder> {
  NotificationsUpdateRequest._();

  factory NotificationsUpdateRequest(
          [Function(NotificationsUpdateRequestBuilder b) updates]) =
      _$NotificationsUpdateRequest;

  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'seen')
  bool get seen;

  String toJson() {
    return json.encode(
      serializers.serializeWith(NotificationsUpdateRequest.serializer, this),
    );
  }

  static NotificationsUpdateRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      NotificationsUpdateRequest.serializer,
      data,
    );
  }

  static Serializer<NotificationsUpdateRequest> get serializer =>
      _$notificationsUpdateRequestSerializer;
}