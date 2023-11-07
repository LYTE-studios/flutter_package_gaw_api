import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/refresh_request.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/response_models/jwt_response.dart';
import 'package:flutter_package_gaw_api/src/features/customers/request_models/create_customer_request.dart';
import 'package:flutter_package_gaw_api/src/features/customers/response_models/create_customer_response.dart';

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
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
