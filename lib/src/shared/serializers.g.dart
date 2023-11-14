// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Address.serializer)
      ..add(CreateCustomerRequest.serializer)
      ..add(CreateCustomerResponse.serializer)
      ..add(Customer.serializer)
      ..add(DailyStatistics.serializer)
      ..add(Job.serializer)
      ..add(JobApplication.serializer)
      ..add(JobApplicationState.serializer)
      ..add(JobState.serializer)
      ..add(JwtResponse.serializer)
      ..add(LoginRequest.serializer)
      ..add(MonthlyStatistics.serializer)
      ..add(RefreshRequest.serializer)
      ..add(RegisterRequest.serializer)
      ..add(StatsRequest.serializer)
      ..add(TimeFrame.serializer)
      ..add(Washer.serializer)
      ..add(WeeklyStatistics.serializer)
      ..add(WeeklyStatisticsListResponse.serializer)
      ..add(YearlyStatistics.serializer)
      ..add(YearlyStatisticsListResponse.serializer)
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
