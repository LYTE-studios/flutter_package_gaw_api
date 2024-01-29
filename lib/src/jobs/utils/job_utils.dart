import 'package:gaw_api/gaw_api.dart';

class JobUtils {
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
      (a, b) => b.job.startTime.compareTo(a.job.startTime),
    );

    otherJobs.sort(
      (a, b) => b.job.startTime.compareTo(a.job.startTime),
    );

    approvedJobs.addAll(otherJobs);

    return approvedJobs;
  }
}
