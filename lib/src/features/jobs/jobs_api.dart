import 'package:built_collection/built_collection.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/transfer_models/job_list_response.dart';

class JobsApi {
  static Future<JobListResponse> getJobsForWasher(
      {required Washer washer}) async {
    // TODO: REMOVE MOCK DATA

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
  }
}
