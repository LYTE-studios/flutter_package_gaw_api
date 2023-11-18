library id_response;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutter_package_gaw_api/src/shared/serializers.dart';

part 'id_response.g.dart';

abstract class IdResponse implements Built<IdResponse, IdResponseBuilder> {
  IdResponse._();

  factory IdResponse([Function(IdResponseBuilder b) updates]) = _$IdResponse;

  @BuiltValueField(wireName: 'id')
  String get id;

  String toJson() {
    return json.encode(
      serializers.serializeWith(IdResponse.serializer, this),
    );
  }

  static IdResponse? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      IdResponse.serializer,
      data,
    );
  }

  static Serializer<IdResponse> get serializer => _$idResponseSerializer;
}
