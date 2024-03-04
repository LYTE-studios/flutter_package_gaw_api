import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/authentication/request_models/settings/session_expiry_request.dart';
import 'package:gaw_api/src/authentication/response_models/session_expiry_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdminStatisticsOverviewResponse,
  CodeVerificationRequest,
  EmailRequest,
  PasswordResetRequest,
  PassTokenResponse,
  ApplyForJobRequest,
  WashersListResponse,
  UpdateCustomerRequest,
  WasherUpdateRequest,
  ApplicationResponse,
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
  SessionExpiryResponse,
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
  UpdateFcmTokenRequest,
  Notification,
  NotificationsListResponse,
  NotificationsUpdateRequest,
  NotificationsRequest,
  UpdateJobRequest,
  SessionExpiryRequest,
  WashersForJobResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
