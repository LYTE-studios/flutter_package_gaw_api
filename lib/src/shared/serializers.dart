import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/authentication/request_models/login_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  Customer,
  Washer,
  Job,
  JobApplication,
  JobState,
  JobApplicationState,
  Address,
  TokenResponse,
  RegisterRequest,
  LoginRequest,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
