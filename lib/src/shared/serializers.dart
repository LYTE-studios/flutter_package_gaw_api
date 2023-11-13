import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/refresh_request.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/response_models/jwt_response.dart';
import 'package:flutter_package_gaw_api/src/features/customers/request_models/create_customer_request.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/create_customer_response.dart';
import 'package:flutter_package_gaw_api/src/features/washers/enums/time_frame.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/statistics/daily_statistics.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/statistics/monthly_statistics.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/statistics/weekly_statistics.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/statistics/yearly_statistics.dart';
import 'package:flutter_package_gaw_api/src/features/washers/request_models/stats_request.dart';
import 'package:flutter_package_gaw_api/src/features/washers/response_models/weekly_statistics_list_response.dart';
import 'package:flutter_package_gaw_api/src/features/washers/response_models/yearly_statistics_list_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Customer,
  Washer,
  Job,
  JobApplication,
  JobState,
  JobApplicationState,
  Address,
  RegisterRequest,
  LoginRequest,
  JwtResponse,
  RefreshRequest,
  CreateCustomerRequest,
  CreateCustomerResponse,
  DailyStatistics,
  WeeklyStatistics,
  YearlyStatistics,
  MonthlyStatistics,
  WeeklyStatisticsListResponse,
  YearlyStatisticsListResponse,
  TimeFrame,
  StatsRequest,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
