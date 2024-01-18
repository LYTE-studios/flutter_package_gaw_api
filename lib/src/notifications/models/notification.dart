library notification;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'notification.g.dart';

abstract class Notification implements Built<Notification, NotificationBuilder> {
  Notification._();

  factory Notification([Function(NotificationBuilder b) updates]) = _$Notification;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'title')
  String get title;

  @BuiltValueField(wireName: 'description')
  String get body;

  @BuiltValueField(wireName: 'sent')
  int? get sent;

  @BuiltValueField(wireName: 'seen')
  bool? get seen;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Notification.serializer, this),
    );
  }

  static Notification? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Notification.serializer,
      data,
    );
  }

  static Serializer<Notification> get serializer => _$notificationSerializer;
}