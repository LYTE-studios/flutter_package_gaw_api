import 'package:built_collection/built_collection.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/transfer_models/job_list_response.dart';

class JobsApi {
  static JobListResponse mockList = JobListResponse(
    (b) => b
      ..upcomingJobs = ListBuilder<Job>(
        [
          Job(
            (b) => b
              ..id = 'test data'
              ..startTime = 1694017800000
              ..endTime = 1694025000000
              ..address = Address(
                (b) => b
                  ..streetName = 'TestingStreet'
                  ..houseNumber = '176'
                  ..country = 'Belgium'
                  ..city = 'TestCity',
              ).toBuilder()
              ..state = JobState.pending
              ..customer = Customer(
                (b) => b
                  ..id = 'id'
                  ..firstName = 'Tanguy'
                  ..lastName = 'Debee'
                  ..initials = 'T.D.B',
              ).toBuilder(),
          ),
          Job(
            (b) => b
              ..id = 'Testende'
              ..startTime = 1694017800000
              ..endTime = 1694025000000
              ..address = Address(
                (b) => b
                  ..streetName = 'straat'
                  ..houseNumber = '6'
                  ..country = 'Toverland'
                  ..city = 'Stad',
              ).toBuilder()
              ..state = JobState.pending
              ..customer = Customer(
                (b) => b
                  ..id = 'idee'
                  ..firstName = 'peter'
                  ..lastName = 'dabee'
                  ..initials = 'P.D.',
              ).toBuilder(),
          ),
        ],
      )
      ..myJobs = ListBuilder(
        [
          Job(
            (b) => b
              ..id = 'Teest'
              ..startTime = 1694017800000
              ..endTime = 1694025000000
              ..address = Address(
                (b) => b
                  ..streetName = 'gf'
                  ..houseNumber = '12345678'
                  ..country = 'Teseestkglda'
                  ..city = 'Taart',
              ).toBuilder()
              ..state = JobState.fulfilled
              ..application = JobApplication(
                (b) => b
                  ..id = 'IDEE'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.approved
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'fhjdal'
                  ..firstName = 'dabij'
                  ..lastName = 'traan'
                  ..company = 'Traan Inc.'
                  ..initials = 'D.T.',
              ).toBuilder(),
          ),
          Job(
            (b) => b
              ..id = 'pendino'
              ..startTime = 1694017800000
              ..endTime = 1694025000000
              ..address = Address(
                (b) => b
                  ..streetName = 'guijfivl;ad'
                  ..houseNumber = '132'
                  ..country = 'jfkd'
                  ..city = 'tjkrl;aci',
              ).toBuilder()
              ..state = JobState.pending
              ..application = JobApplication(
                (b) => b
                  ..id = 'htjfdk'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.pending
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'traan'
                  ..firstName = 'blaue'
                  ..lastName = 'ghfjdk'
                  ..initials = 'T.B.',
              ).toBuilder(),
          ),
          Job(
            (b) => b
              ..id = 'Peeeend'
              ..startTime = 1694017800000
              ..endTime = 1694025000000
              ..address = Address(
                (b) => b
                  ..streetName = 'hgjfkd'
                  ..houseNumber = '12'
                  ..country = 'jfkd'
                  ..city = 'tjkrl;aci',
              ).toBuilder()
              ..state = JobState.pending
              ..application = JobApplication(
                (b) => b
                  ..id = 'htjfdk'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.rejected
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'traan'
                  ..firstName = 'blaue'
                  ..lastName = 'ghfjdk'
                  ..initials = 'T.B.',
              ).toBuilder(),
          ),
        ],
      )
      ..jobs = ListBuilder(
        [
          Job(
            (b) => b
              ..id = 'Teest'
              ..startTime = DateTime.now()
                  .subtract(
                    const Duration(days: 2, hours: 2),
                  )
                  .millisecondsSinceEpoch
              ..endTime = DateTime.now()
                  .subtract(
                    const Duration(days: 2),
                  )
                  .millisecondsSinceEpoch
              ..address = Address(
                (b) => b
                  ..streetName = 'gf'
                  ..houseNumber = '12345678'
                  ..country = 'Teseestkglda'
                  ..city = 'Taart',
              ).toBuilder()
              ..state = JobState.done
              ..application = JobApplication(
                (b) => b
                  ..id = 'IDEE'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.approved
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'fhjdal'
                  ..firstName = 'dabij'
                  ..lastName = 'traan'
                  ..initials = 'D.T.',
              ).toBuilder(),
          ),
          Job(
            (b) => b
              ..id = 'Teest'
              ..startTime = DateTime.now()
                  .subtract(
                    const Duration(days: 3, hours: 2),
                  )
                  .millisecondsSinceEpoch
              ..endTime = DateTime.now()
                  .subtract(
                    const Duration(days: 3),
                  )
                  .millisecondsSinceEpoch
              ..address = Address(
                (b) => b
                  ..streetName = 'gf'
                  ..houseNumber = '12345678'
                  ..country = 'Teseestkglda'
                  ..city = 'Taart',
              ).toBuilder()
              ..state = JobState.done
              ..application = JobApplication(
                (b) => b
                  ..id = 'IDEE'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.approved
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'fhjdal'
                  ..firstName = 'dabij'
                  ..lastName = 'traan'
                  ..initials = 'D.T.',
              ).toBuilder(),
          ),
          Job(
            (b) => b
              ..id = 'pendino'
              ..startTime = DateTime.now()
                  .subtract(
                    const Duration(days: 20),
                  )
                  .millisecondsSinceEpoch
              ..endTime = DateTime.now()
                  .subtract(
                    const Duration(days: 2, hours: 4),
                  )
                  .millisecondsSinceEpoch
              ..address = Address(
                (b) => b
                  ..streetName = 'guijfivl;ad'
                  ..houseNumber = '132'
                  ..country = 'jfkd'
                  ..city = 'tjkrl;aci',
              ).toBuilder()
              ..state = JobState.done
              ..application = JobApplication(
                (b) => b
                  ..id = 'htjfdk'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.pending
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'traan'
                  ..firstName = 'blaue'
                  ..lastName = 'ghfjdk'
                  ..initials = 'T.B.',
              ).toBuilder(),
          ),
          Job(
            (b) => b
              ..id = 'Peeeend'
              ..startTime = DateTime.now()
                  .subtract(
                    const Duration(days: 40),
                  )
                  .millisecondsSinceEpoch
              ..endTime = DateTime.now()
                  .subtract(
                    const Duration(days: 40, hours: 2),
                  )
                  .millisecondsSinceEpoch
              ..address = Address(
                (b) => b
                  ..streetName = 'hgjfkd'
                  ..houseNumber = '12'
                  ..country = 'jfkd'
                  ..city = 'tjkrl;aci',
              ).toBuilder()
              ..state = JobState.cancelled
              ..application = JobApplication(
                (b) => b
                  ..id = 'htjfdk'
                  ..noTravelCosts = true
                  ..state = JobApplicationState.rejected
                  ..washer = Washer(
                    (b) => b
                      ..email = 'hjk'
                      ..firstName = 'hjfkl;d'
                      ..lastName = 'ghjfdks',
                  ).toBuilder()
                  ..address = Address(
                    (b) => b
                      ..streetName = 'gf'
                      ..houseNumber = '12345678'
                      ..country = 'Teseestkglda'
                      ..city = 'Taart',
                  ).toBuilder(),
              ).toBuilder()
              ..customer = Customer(
                (b) => b
                  ..id = 'traan'
                  ..firstName = 'blaue'
                  ..lastName = 'ghfjdk'
                  ..initials = 'T.B.',
              ).toBuilder(),
          ),
        ],
      ),
  );

  static Future<Job> getJob({required String jobId}) async {
    // TODO: REMOVE MOCK DATA

    try {
      return mockList.myJobs.firstWhere((job) => job.id == jobId);
    } catch (error) {
      return mockList.upcomingJobs.firstWhere((job) => job.id == jobId);
    }
  }

  static Future<JobListResponse> getArchivedJobs() async {
    return mockList;
  }

  static Future<JobListResponse> getJobsForWasher(
      {required Washer washer}) async {
    // TODO: REMOVE MOCK DATA

<<<<<<< Updated upstream
    return JobListResponse(
      (b) => b
        ..myJobs = ListBuilder<Job>(
          [
            Job(
              (b) => b
                ..id = 'test data'
                ..address = Address(
                  (b) => b
                    ..streetName = 'TestingStreet'
                    ..houseNumber = '176'
                    ..country = 'Belgium'
                    ..city = 'TestCity',
                ).toBuilder()
                ..state = JobState.pending
                ..customer = Customer(
                  (b) => b
                    ..id = 'id'
                    ..firstName = 'Tanguy'
                    ..lastName = 'Debee'
                    ..initials = 'T.D.B',
                ).toBuilder(),
            ),
            Job(
              (b) => b
                ..id = 'Testende'
                ..address = Address(
                  (b) => b
                    ..streetName = 'straat'
                    ..houseNumber = '6'
                    ..country = 'Toverland'
                    ..city = 'Stad',
                ).toBuilder()
                ..state = JobState.pending
                ..customer = Customer(
                  (b) => b
                    ..id = 'idee'
                    ..firstName = 'peter'
                    ..lastName = 'dabee'
                    ..initials = 'P.D.',
                ).toBuilder(),
            ),
          ],
        )
        ..upcomingJobs = ListBuilder(
          [
            Job(
              (b) => b
                ..id = 'Teest'
                ..address = Address(
                  (b) => b
                    ..streetName = 'gf'
                    ..houseNumber = '12345678'
                    ..country = 'Teseestkglda'
                    ..city = 'Taart',
                ).toBuilder()
                ..state = JobState.fulfilled
                ..application = JobApplication(
                  (b) => b
                    ..id = 'IDEE'
                    ..noTravelCosts = true
                    ..state = JobApplicationState.approved
                    ..address = Address(
                      (b) => b
                        ..streetName = 'gf'
                        ..houseNumber = '12345678'
                        ..country = 'Teseestkglda'
                        ..city = 'Taart',
                    ).toBuilder(),
                ).toBuilder()
                ..customer = Customer(
                  (b) => b
                    ..id = 'fhjdal'
                    ..firstName = 'dabij'
                    ..lastName = 'traan'
                    ..initials = 'D.T.',
                ).toBuilder(),
            ),
            Job(
              (b) => b
                ..id = 'pendino'
                ..address = Address(
                  (b) => b
                    ..streetName = 'guijfivl;ad'
                    ..houseNumber = '132'
                    ..country = 'jfkd'
                    ..city = 'tjkrl;aci',
                ).toBuilder()
                ..state = JobState.pending
                ..application = JobApplication(
                  (b) => b
                    ..id = 'htjfdk'
                    ..noTravelCosts = true
                    ..state = JobApplicationState.pending
                    ..address = Address(
                      (b) => b
                        ..streetName = 'gf'
                        ..houseNumber = '12345678'
                        ..country = 'Teseestkglda'
                        ..city = 'Taart',
                    ).toBuilder(),
                ).toBuilder()
                ..customer = Customer(
                  (b) => b
                    ..id = 'traan'
                    ..firstName = 'blaue'
                    ..lastName = 'ghfjdk'
                    ..initials = 'T.B.',
                ).toBuilder(),
            ),
            Job(
              (b) => b
                ..id = 'Peeeend'
                ..address = Address(
                  (b) => b
                    ..streetName = 'hgjfkd'
                    ..houseNumber = '12'
                    ..country = 'jfkd'
                    ..city = 'tjkrl;aci',
                ).toBuilder()
                ..state = JobState.pending
                ..application = JobApplication(
                  (b) => b
                    ..id = 'htjfdk'
                    ..noTravelCosts = true
                    ..state = JobApplicationState.rejected
                    ..address = Address(
                      (b) => b
                        ..streetName = 'gf'
                        ..houseNumber = '12345678'
                        ..country = 'Teseestkglda'
                        ..city = 'Taart',
                    ).toBuilder(),
                ).toBuilder()
                ..customer = Customer(
                  (b) => b
                    ..id = 'traan'
                    ..firstName = 'blaue'
                    ..lastName = 'ghfjdk'
                    ..initials = 'T.B.',
                ).toBuilder(),
            ),
          ],
        ),
    );
=======
    return mockList;
>>>>>>> Stashed changes
  }
}
