import 'package:gaw_api/gaw_api.dart';

/// Utils involving jobs or job applications
class JobUtils {
  // -- Jobs --

  /// Sort the job by datetime of start
  static List<Job> staticSortJobs({
    /// The set list to sort
    required List<Job> jobs,

    /// Sort the values reversed
    bool sortHistorically = false,
  }) {
    if (sortHistorically) {
      return jobs
        ..sort(
          (a, b) => b.startTime.compareTo(a.startTime),
        );
    }

    return jobs
      ..sort(
        (a, b) => a.startTime.compareTo(b.startTime),
      );
  }

  /// Sorts jobs for list views
  /// Done -> Last jobs first
  /// Other -> First jobs first
  static List<Job> sortJobs(List<Job> jobs) {
    // Check weather the jobs should be sorted as a look back list
    bool sortHistorically = jobs.first.state == JobState.done;

    // Return the time sorted values
    return staticSortJobs(
      jobs: jobs,
      sortHistorically: sortHistorically,
    );
  }

  // -- Applications --

  /// Sort the applications by datetime of start of the job
  static List<JobApplication> staticSortApplications(
    List<JobApplication> applications,
  ) {
    applications.sort(
      (a, b) => a.job.startTime.compareTo(b.job.startTime),
    );

    return applications;
  }

  /// Sort the applications for a list view
  ///
  /// [Approved, pending] -> other
  /// ||
  /// First jobs are first in the list after status sorting
  static List<JobApplication> sortApplications(
    List<JobApplication> applications,
  ) {
    // Store the approved and pending applications
    List<JobApplication> activeApplications = [];

    // Rest
    // -> Deleted, other, ...
    List<JobApplication> inactiveApplications = [];

    // Iterate
    for (JobApplication application in applications) {
      // Handle all types
      switch (application.state) {
        case JobApplicationState.approved:
        case JobApplicationState.pending:
          activeApplications.add(application);
        default:
          inactiveApplications.add(application);
      }
    }

    // Sort the applications by time
    activeApplications = staticSortApplications(activeApplications);
    inactiveApplications = staticSortApplications(inactiveApplications);

    // Return the active applications first
    return [...activeApplications, ...inactiveApplications];
  }
}
