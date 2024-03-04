import 'package:gaw_api/gaw_api.dart';

class JobUtils {
  static List<JobApplication> staticSortApplications(
      List<JobApplication> applications) {
    applications.sort(
      (a, b) => a.job.startTime.compareTo(b.job.startTime),
    );

    return applications;
  }

  static List<Job> sortJobs(List<Job> jobs) {
    if(jobs.first.state == JobState.done){
      jobs.sort(
            (a, b) => b.startTime.compareTo(a.startTime),
      );

      return jobs;
    }

    jobs.sort(
      (a, b) => a.startTime.compareTo(b.startTime),
    );

    return jobs;
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
