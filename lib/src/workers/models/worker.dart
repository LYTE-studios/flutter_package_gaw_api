library worker;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gaw_api/gaw_api.dart';

part 'worker.g.dart';

abstract class Worker implements Built<Worker, WorkerBuilder> {
  Worker._();

  factory Worker([Function(WorkerBuilder b) updates]) = _$Worker;

  @BuiltValueField(wireName: 'id')
  String? get id;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'iban')
  String? get iban;

  @BuiltValueField(wireName: 'email')
  String get email;

  @BuiltValueField(wireName: 'address')
  Address? get address;

  @BuiltValueField(wireName: 'profile_picture')
  String? get profilePictureUrl;

  @BuiltValueField(wireName: 'initials')
  String? get initials;

  @BuiltValueField(wireName: 'ssn')
  String? get ssn;

  @BuiltValueField(wireName: 'billing_address')
  Address? get billingAddress;

  @BuiltValueField(wireName: 'created_at')
  int? get createdAt;

  @BuiltValueField(wireName: 'date_of_birth')
  int? get dateOfBirth;

  @BuiltValueField(wireName: 'place_of_birth')
  String? get placeOfBirth;

  @BuiltValueField(wireName: 'tags')
  List<Tag>? get tags;

  @BuiltValueField(wireName: 'worker_type')
  String? get workerType;

  String toJson() {
    return json.encode(
      serializers.serializeWith(Worker.serializer, this),
    );
  }

  String getFullName() {
    return '$firstName $lastName';
  }

  static Worker? fromJson(Map<String, dynamic> data) {
    return serializers.deserializeWith(
      Worker.serializer,
      data,
    );
  }

  static Serializer<Worker> get serializer => _$workerSerializer;
}
