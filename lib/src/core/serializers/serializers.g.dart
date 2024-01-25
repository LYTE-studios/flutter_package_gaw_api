// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Address.serializer)
      ..add(AdminStatisticsOverviewResponse.serializer)
      ..add(ApplicationListResponse.serializer)
      ..add(ApplyForJobRequest.serializer)
      ..add(CodeVerificationRequest.serializer)
      ..add(CreateCustomerRequest.serializer)
      ..add(CreateCustomerResponse.serializer)
      ..add(CreateJobRequest.serializer)
      ..add(Customer.serializer)
      ..add(CustomerListResponse.serializer)
      ..add(DailyStatistics.serializer)
      ..add(EmailRequest.serializer)
      ..add(HelloThereResponse.serializer)
      ..add(IdResponse.serializer)
      ..add(Job.serializer)
      ..add(JobApplication.serializer)
      ..add(JobApplicationState.serializer)
      ..add(JobListResponse.serializer)
      ..add(JobState.serializer)
      ..add(JwtResponse.serializer)
      ..add(LoginRequest.serializer)
      ..add(MeResponse.serializer)
      ..add(MonthlyStatistics.serializer)
      ..add(Notification.serializer)
      ..add(NotificationsListResponse.serializer)
      ..add(NotificationsRequest.serializer)
      ..add(NotificationsUpdateRequest.serializer)
      ..add(PassTokenResponse.serializer)
      ..add(PasswordResetRequest.serializer)
      ..add(RefreshRequest.serializer)
      ..add(RegisterRequest.serializer)
      ..add(StatsRequest.serializer)
      ..add(TimeFrame.serializer)
      ..add(TimeRegistration.serializer)
      ..add(TimeRegistrationListResponse.serializer)
      ..add(TimeRegistrationRequest.serializer)
      ..add(TimeRegistrationResponse.serializer)
      ..add(UpdateFcmTokenRequest.serializer)
      ..add(UpdateLanguageRequest.serializer)
      ..add(UpdateUserRequest.serializer)
      ..add(UpdateUserResponse.serializer)
      ..add(UserBasedJobsRequest.serializer)
      ..add(Washer.serializer)
      ..add(WashersListResponse.serializer)
      ..add(WeeklyStatistics.serializer)
      ..add(WeeklyStatisticsListResponse.serializer)
      ..add(YearlyStatistics.serializer)
      ..add(YearlyStatisticsListResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Customer)]),
          () => new ListBuilder<Customer>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Job)]),
          () => new ListBuilder<Job>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(JobApplication)]),
          () => new ListBuilder<JobApplication>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Notification)]),
          () => new ListBuilder<Notification>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TimeRegistration)]),
          () => new ListBuilder<TimeRegistration>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Washer)]),
          () => new ListBuilder<Washer>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeeklyStatistics)]),
          () => new ListBuilder<WeeklyStatistics>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(YearlyStatistics)]),
          () => new ListBuilder<YearlyStatistics>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(MonthlyStatistics)
          ]),
          () => new MapBuilder<String, MonthlyStatistics>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
