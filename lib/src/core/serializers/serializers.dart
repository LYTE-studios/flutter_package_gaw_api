import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/notifications/models/notification.dart';
import 'package:gaw_api/src/notifications/request_models/notifications_request.dart';
import 'package:gaw_api/src/notifications/request_models/notifications_update_request.dart';
import 'package:gaw_api/src/notifications/response_models/notifications_list_response.dart';
import 'package:gaw_api/src/users/request_models/update_fcm_token_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  AdminStatisticsOverviewResponse,
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
  UpdateFcmTokenRequest,
  Notification,
  NotificationsListResponse,
  NotificationsUpdateRequest,
  NotificationsRequest,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
