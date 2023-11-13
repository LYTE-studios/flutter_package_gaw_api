// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Address.serializer)
      ..add(CreateCustomerRequest.serializer)
      ..add(CreateCustomerResponse.serializer)
      ..add(CreateJobRequest.serializer)
      ..add(Customer.serializer)
      ..add(Job.serializer)
      ..add(JobApplication.serializer)
      ..add(JobApplicationState.serializer)
      ..add(JobListResponse.serializer)
      ..add(JobState.serializer)
      ..add(JwtResponse.serializer)
      ..add(LoginRequest.serializer)
      ..add(RefreshRequest.serializer)
      ..add(RegisterRequest.serializer)
      ..add(TimeRegistration.serializer)
      ..add(TimeRegistrationListResponse.serializer)
      ..add(TimeRegistrationRequest.serializer)
      ..add(TimeRegistrationResponse.serializer)
      ..add(UserBasedJobsRequest.serializer)
      ..add(Washer.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Job)]),
          () => new ListBuilder<Job>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TimeRegistration)]),
          () => new ListBuilder<TimeRegistration>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
