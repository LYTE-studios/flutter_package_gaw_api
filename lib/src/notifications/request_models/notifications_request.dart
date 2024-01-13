library notifications_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'notifications_request.g.dart';

abstract class NotificationsRequest
    implements Built<NotificationsRequest, NotificationsRequestBuilder> {
  NotificationsRequest._();

  factory NotificationsRequest(
          [Function(NotificationsRequestBuilder b) updates]) =
      _$NotificationsRequest;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'description')
  String get description;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'is_global')
  bool get isGlobal;

  @BuiltValueField(wireName: 'send_mail')
  bool get sendMail;

  String toJson() {
    return json.encode(
      serializers.serializeWith(NotificationsRequest.serializer, this),
    );
  }

  static NotificationsRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      NotificationsRequest.serializer,
      data,
    );
  }

  static Serializer<NotificationsRequest> get serializer =>
      _$notificationsRequestSerializer;
}