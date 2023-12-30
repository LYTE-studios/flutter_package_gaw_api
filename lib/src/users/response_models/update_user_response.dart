library update_user_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'update_user_response.g.dart';

abstract class UpdateUserResponse
    implements Built<UpdateUserResponse, UpdateUserResponseBuilder> {
  UpdateUserResponse._();

  factory UpdateUserResponse([Function(UpdateUserResponseBuilder b) updates]) =
      _$UpdateUserResponse;

  @BuiltValueField(wireName: 'user_id')
  String get userId;

  String toJson() {
    return json.encode(
      serializers.serializeWith(UpdateUserResponse.serializer, this),
    );
  }

  static UpdateUserResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      UpdateUserResponse.serializer,
      data,
    );
  }

  static Serializer<UpdateUserResponse> get serializer =>
      _$updateUserResponseSerializer;
}
