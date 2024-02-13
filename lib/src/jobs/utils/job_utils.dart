import 'package:gaw_api/gaw_api.dart';

class JobUtils {
  static List<JobApplication> staticSortApplications(
      List<JobApplication> applications) {
    applications.sort(
      (a, b) => a.job.startTime.compareTo(b.job.startTime),
    );

    return applications;
  }

  static List<JobApplication> sortApplications(
      List<JobApplication> applications) {
    List<JobApplication> approvedJobs = [];
    List<JobApplication> otherJobs = [];

    for (JobApplication application in applications) {
      if (application.state == JobApplicationState.approved) {
        approvedJobs.add(application);
      } else {
        otherJobs.add(application);
      }
    }

    approvedJobs.sort(
      (a, b) => a.job.startTime.compareTo(b.job.startTime),
    );

    otherJobs.sort(
      (a, b) => a.job.startTime.compareTo(b.job.startTime),
    );

    approvedJobs.addAll(otherJobs);

    return approvedJobs;
  }
}
