import 'package:gaw_api/src/authentication/request_models/registration/registration_onboarding.dart';

class WorkerRegistration {
  String email;

  String password;

  List<JobType> jobTypes;

  List<RegistrationLocation> locations;

  List<WorkType> workTypes;

  WorkerRegistration({
    required this.email,
    required this.password,
    this.jobTypes = const [],
    this.locations = const [],
    this.workTypes = const [],
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "job_types": jobTypes.map((e) => e.toJson()).toList(),
        "locations": locations.map((e) => e.toJson()).toList(),
        "work_types": workTypes.map((e) => e.toJson()).toList(),
      };
}
