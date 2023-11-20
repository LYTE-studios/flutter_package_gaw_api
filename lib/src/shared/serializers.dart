import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/password/code_verification_request.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/password/email_request.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/password/password_reset_request.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/refresh_request.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/response_models/pass_token_response.dart';
import 'package:flutter_package_gaw_api/src/features/customers/request_models/create_customer_request.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/create_customer_response.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/request/create_job_request.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/request/time_registration_request.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/request/user_based_jobs_request.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/response/time_registration_response.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/time_registration.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/transfer_models/time_registration_list_response.dart';
import 'package:flutter_package_gaw_api/src/users/request_models/update_language_request.dart';
import 'package:flutter_package_gaw_api/src/users/request_models/update_user_request.dart';
import 'package:flutter_package_gaw_api/src/users/response_models/me_response.dart';
import 'package:flutter_package_gaw_api/src/users/response_models/update_user_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApplyForJobRequest,
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
  StatsRequest,
  CodeVerificationRequest,
  EmailRequest,
  PasswordResetRequest,
  PassTokenResponse,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
