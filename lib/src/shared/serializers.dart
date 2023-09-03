import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/address.dart';
import 'package:flutter_package_gaw_api/src/features/customers/models/customer.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/enums/job_application_state.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/enums/job_state.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/job.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/job_application.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/washer.dart';

part 'serializers.g.dart';

@SerializersFor([
  Customer,
  Washer,
  Job,
  JobApplication,
  JobState,
  JobApplicationState,
  Address,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
