//library user_based_jobs_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'user_based_jobs_request.g.dart';

abstract class UserBasedJobsRequest
    implements Built<UserBasedJobsRequest, UserBasedJobsRequestBuilder> {
  // Constructor
  UserBasedJobsRequest._();

  // Factory constructor
  factory UserBasedJobsRequest(
          [Function(UserBasedJobsRequestBuilder b) updates]) =
      _$UserBasedJobsRequest;

  // Fields
  @BuiltValueField(wireName: 'washer_id')
  String? get washerId;

  @BuiltValueField(wireName: 'customer_id')
  String? get customerId;

  // Convert the object to JSON
  String toJson() {
    return json.encode(
      serializers.serializeWith(UserBasedJobsRequest.serializer, this),
    );
  }

  // Deserialize from JSON
  static UserBasedJobsRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      UserBasedJobsRequest.serializer,
      data,
    );
  }

  // Serializer
  static Serializer<UserBasedJobsRequest> get serializer =>
      _$userBasedJobsRequestSerializer;
}
