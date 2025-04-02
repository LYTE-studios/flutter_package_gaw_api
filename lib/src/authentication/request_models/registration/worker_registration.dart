import 'package:gaw_api/src/authentication/request_models/registration/registration_onboarding.dart';

class WorkerRegistration {
  String phoneNumber;

  String email;

  String password;

  String firstName;

  String lastName;

  List<JobType> jobTypes;

  List<RegistrationLocation> locations;

  List<WorkType> workTypes;

  WorkerRegistration({
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    this.jobTypes = const [],
    this.locations = const [],
    this.workTypes = const [],
  });

  Map<String, dynamic> toJson() => {
        "phone_number": phoneNumber,
        "email": email,
        "password": password,
        "first_name": firstName,
        "last_name": lastName,
        "job_types": jobTypes.map((e) => e.toJson()).toList(),
        "locations": locations.map((e) => e.toJson()).toList(),
        "work_types": workTypes.map((e) => e.toJson()).toList(),
      };
}
