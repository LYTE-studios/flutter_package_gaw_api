library notifications_list_respone;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/src/notifications/models/notification.dart';

part 'notifications_list_response.g.dart';

abstract class NotificationsListResponse
    implements
        Built<NotificationsListResponse, NotificationsListResponseBuilder> {
  NotificationsListResponse._();

  factory NotificationsListResponse(
          [Function(NotificationsListResponseBuilder b) updates]) =
      _$NotificationsListResponse;

  @BuiltValueField(wireName: 'notifications')
  BuiltList<Notification>? get notifications;

  String toJson() {
    return json.encode(
      serializers.serializeWith(NotificationsListResponse.serializer, this),
    );
  }

  static NotificationsListResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      NotificationsListResponse.serializer,
      data,
    );
  }

  static Serializer<NotificationsListResponse> get serializer =>
      _$notificationsListResponseSerializer;
}