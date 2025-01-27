// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Address.serializer)
      ..add(AdminStatisticsOverviewResponse.serializer)
      ..add(ApplicationListResponse.serializer)
      ..add(ApplicationResponse.serializer)
      ..add(ApplyForJobRequest.serializer)
      ..add(CodeVerificationRequest.serializer)
      ..add(CreateCustomerRequest.serializer)
      ..add(CreateCustomerResponse.serializer)
      ..add(CreateJobRequest.serializer)
      ..add(Customer.serializer)
      ..add(CustomerListResponse.serializer)
      ..add(DailyStatistics.serializer)
      ..add(Dimona.serializer)
      ..add(DimonaListResponse.serializer)
      ..add(EmailRequest.serializer)
      ..add(Export.serializer)
      ..add(ExportsListResponse.serializer)
      ..add(GeneralStatistics.serializer)
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
      ..add(SessionExpiryRequest.serializer)
      ..add(SessionExpiryResponse.serializer)
      ..add(StatsRequest.serializer)
      ..add(TimeFrame.serializer)
      ..add(TimeRegistration.serializer)
      ..add(TimeRegistrationListResponse.serializer)
      ..add(TimeRegistrationRequest.serializer)
      ..add(TimeRegistrationResponse.serializer)
      ..add(UpdateCustomerRequest.serializer)
      ..add(UpdateFcmTokenRequest.serializer)
      ..add(UpdateJobRequest.serializer)
      ..add(UpdateLanguageRequest.serializer)
      ..add(UpdateUserRequest.serializer)
      ..add(UpdateUserResponse.serializer)
      ..add(UserBasedJobsRequest.serializer)
      ..add(WeeklyStatistics.serializer)
      ..add(WeeklyStatisticsListResponse.serializer)
      ..add(Worker.serializer)
      ..add(WorkerUpdateRequest.serializer)
      ..add(WorkersForJobResponse.serializer)
      ..add(WorkersListResponse.serializer)
      ..add(YearlyStatistics.serializer)
      ..add(YearlyStatisticsListResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Customer)]),
          () => new ListBuilder<Customer>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Dimona)]),
          () => new ListBuilder<Dimona>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Export)]),
          () => new ListBuilder<Export>())
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
          const FullType(BuiltList, const [const FullType(TimeRegistration)]),
          () => new ListBuilder<TimeRegistration>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeeklyStatistics)]),
          () => new ListBuilder<WeeklyStatistics>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Worker)]),
          () => new ListBuilder<Worker>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Worker)]),
          () => new ListBuilder<Worker>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TimeRegistration)]),
          () => new ListBuilder<TimeRegistration>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(YearlyStatistics)]),
          () => new ListBuilder<YearlyStatistics>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(MonthlyStatistics)
          ]),
          () => new MapBuilder<String, MonthlyStatistics>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(int), const FullType(int)]),
          () => new MapBuilder<int, int>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
