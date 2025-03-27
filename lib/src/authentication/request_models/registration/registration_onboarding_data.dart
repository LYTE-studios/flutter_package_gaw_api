import 'package:gaw_api/src/authentication/request_models/registration/registration_onboarding.dart';

class RegistrationOnboardingData {
  List<JobType> jobTypes;

  List<RegistrationLocation> locations;

  List<WorkType> workTypes;

  RegistrationOnboardingData({
    this.jobTypes = const [],
    this.locations = const [],
    this.workTypes = const [],
  });

  factory RegistrationOnboardingData.fromJson(Map<String, dynamic> json) {
    return RegistrationOnboardingData(
      jobTypes:
          List<JobType>.from(json["job_types"].map((x) => JobType.fromJson(x))),
      locations: List<RegistrationLocation>.from(
          json["locations"].map((x) => RegistrationLocation.fromJson(x))),
      workTypes: List<WorkType>.from(
          json["work_types"].map((x) => WorkType.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "job_types": jobTypes.map((e) => e.toJson()).toList(),
        "locations": locations.map((e) => e.toJson()).toList(),
        "work_types": workTypes.map((e) => e.toJson()).toList(),
      };
}
