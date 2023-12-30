library email_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'email_request.g.dart';

abstract class EmailRequest
    implements Built<EmailRequest, EmailRequestBuilder> {
  EmailRequest._();

  factory EmailRequest([Function(EmailRequestBuilder b) updates]) =
      _$EmailRequest;

  @BuiltValueField(wireName: 'email')
  String get email;

  String toJson() {
    return json.encode(
      serializers.serializeWith(EmailRequest.serializer, this),
    );
  }

  static EmailRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      EmailRequest.serializer,
      data,
    );
  }

  static Serializer<EmailRequest> get serializer => _$emailRequestSerializer;
}
