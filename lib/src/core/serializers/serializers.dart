import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:gaw_api/gaw_api.dart';

part 'serializers.g.dart';

@SerializersFor([
  CodeVerificationRequest,
  EmailRequest,
  PasswordResetRequest,
  PassTokenResponse,
  ApplyForJobRequest,
  WashersListResponse,
  IdResponse,
  Customer,
  Washer,
  Job,
  ApplicationListResponse,
  JobApplication,
  JobState,
  JobApplicationState,
  Address,
  TimeRegistration,
  RegisterRequest,
  LoginRequest,
  JwtResponse,
  RefreshRequest,
  CreateCustomerRequest,
  CreateCustomerResponse,
  UserBasedJobsRequest,
  TimeRegistrationResponse,
  HelloThereResponse,
  JobListResponse,
  TimeRegistrationListResponse,
  TimeRegistrationRequest,
  CreateJobRequest,
  UpdateLanguageRequest,
  UpdateUserRequest,
  UpdateUserResponse,
  MeResponse,
  DailyStatistics,
  WeeklyStatistics,
  YearlyStatistics,
  MonthlyStatistics,
  WeeklyStatisticsListResponse,
  YearlyStatisticsListResponse,
  TimeFrame,
  CustomerListResponse,
  StatsRequest,
  ApplyForJobRequest,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
