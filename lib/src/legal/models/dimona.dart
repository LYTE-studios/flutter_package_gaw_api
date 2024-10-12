library dimona;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/notifications/models/notification.dart';

part 'dimona.g.dart';

abstract class Dimona implements Built<Dimona, DimonaBuilder> {
  Dimona._();

  factory Dimona([Function(DimonaBuilder b) updates]) = _$Dimona;

  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'application')
  JobApplication get application;

  @BuiltValueField(wireName: 'success')
  bool? get success;

  @BuiltValueField(wireName: 'description')
  String? get description;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Dimona.serializer, this),
    );
  }

  static Dimona? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Dimona.serializer,
      data,
    );
  }

  static Serializer<Dimona> get serializer => _$dimonaSerializer;
}
