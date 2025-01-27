import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'worker_update_request.g.dart';

abstract class WorkerUpdateRequest
    implements Built<WorkerUpdateRequest, WorkerUpdateRequestBuilder> {
  WorkerUpdateRequest._();

  factory WorkerUpdateRequest(
      [Function(WorkerUpdateRequestBuilder b) updates]) = _$WorkerUpdateRequest;

  @BuiltValueField(wireName: 'email')
  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'tax_number')
  String? get taxNumber;

  @BuiltValueField(wireName: 'date_of_birth')
  int? get dateOfBirth;

  @BuiltValueField(wireName: 'company')
  String? get company;

  String toJson() {
    return json.encode(
        serializers.serializeWith(WorkerUpdateRequest.serializer, this));
  }

  static WorkerUpdateRequest? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      WorkerUpdateRequest.serializer,
      data,
    );
  }

  static Serializer<WorkerUpdateRequest> get serializer =>
      _$workerUpdateRequestSerializer;
}
