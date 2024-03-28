library jobs_api;

import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';
import 'package:image/image.dart';

export 'enums/job_application_state.dart';
export 'enums/job_state.dart';
export 'models/job.dart';
export 'models/job_application.dart';
export 'models/time_registration.dart';
export 'request_models/apply_for_job_request.dart';
export 'request_models/create_job_request.dart';
export 'request_models/time_registration_request.dart';
export 'request_models/update_job_request.dart';
export 'request_models/user_based_jobs_request.dart';
export 'response_models/application_list_response.dart';
export 'response_models/application_response.dart';
export 'response_models/job_list_response.dart';
export 'response_models/time_registration_list_response.dart';
export 'response_models/time_registration_response.dart';
export 'response_models/washers_for_job_response.dart';
export 'utils/job_utils.dart';

class JobsApi {
  /// Gets the washers job applications
  static Future<ApplicationListResponse?> getMyApplications() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/applications/me',
    );

    if (response.statusCode == 200) {
      return ApplicationListResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Gets the washers job applications
  static Future<JobApplication?> getApplication(
    String id,
  ) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/applications/details/$id',
    );

    if (response.statusCode == 200) {
      return JobApplication.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// creates a new application
  static Future<IdResponse?> createApplication(
      {required ApplyForJobRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/applications/me',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return IdResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> denyApplication({required String id}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/applications/details/$id/deny',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> approveApplication({required String id}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/applications/details/$id/approve',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Job?> getJob({required String id}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/details/$id',
    );

    if (response.statusCode == 200) {
      return Job.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> deleteJob({required String id}) async {
    Response response = await RequestFactory.executeDelete(
      endpoint: '/jobs/details/$id',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Gets the upcoming jobs for which a washer can apply
  static Future<JobListResponse?> getUpcomingJobs({
    bool isAdmin = false,
    int? startTime,
    int? endTime,
  }) async {
    String url = '/jobs/upcoming';

    if (isAdmin) {
      url = '/jobs/upcoming/all';

      if (startTime != null && endTime != null) {
        url += '/$startTime/$endTime';
      }
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getHistoryJobs({
    int? start,
    int? end,
  }) async {
    String url = '/jobs/history';

    if (start != null && end != null) {
      url = '/jobs/history/$start/$end';
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getJobs({
    required UserBasedJobsRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/jobs/get',
      body: request.toJson(),
    );
    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<ApplicationListResponse?> getApplications(
      {String? jobId}) async {
    String url = '/applications';

    if (jobId != null) {
      url = '/applications/$jobId';
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );
    if (response.statusCode == 200) {
      return ApplicationListResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getActiveJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/active',
    );
    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getDoneJobs({
    int? startTime,
    int? endTime,
  }) async {
    String url = '/jobs/done';

    if (startTime != null && endTime != null) {
      url += '/$startTime/$endTime';
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );
    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getDraftJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/drafts',
    );
    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<ApplicationResponse?> getActiveJob() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/me/active',
    );

    if (response.statusCode == 200) {
      return ApplicationResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<TimeRegistrationListResponse?> getTimeRegistrations({
    required String jobId,
  }) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/timeregistration?job_id=$jobId',
    );

    if (response.statusCode == 200) {
      return TimeRegistrationListResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<TimeRegistration?> getTimeRegistrationForJob({
    required String jobId,
  }) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/me/$jobId/time_registration',
    );

    if (response.statusCode == 200) {
      return TimeRegistration.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<TimeRegistrationResponse?> createTimeRegistration({
    required TimeRegistrationRequest request,
    String? userId,
  }) async {
    Uint8List? customerSignature;
    Uint8List? washerSignature;

    if (request.washerSignature != null && request.customerSignature != null) {
      washerSignature = encodePng(decodeImage(request.washerSignature!)!);
      customerSignature = encodePng(decodeImage(request.customerSignature!)!);
    }

    String url = '/jobs/timeregistration';

    if (userId != null) {
      url += '/$userId';
    }

    Response response = await RequestFactory.executePost(
      endpoint: url,
      body: FormData.fromMap(
        {
          'job_id': request.jobId,
          'start_time': request.startTime,
          'end_time': request.endTime,
          'washer_signature': washerSignature == null
              ? null
              : MultipartFile.fromBytes(
                  washerSignature.toList(),
                  filename: "washer.png",
                ),
          'customer_signature': customerSignature == null
              ? null
              : MultipartFile.fromBytes(
                  customerSignature.toList(),
                  filename: "customer.png",
                ),
        },
      ),
    );

    if (response.statusCode == 200) {
      return TimeRegistrationResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<TimeRegistrationResponse?> createJob({
    required CreateJobRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/jobs/create',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TimeRegistrationResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<WashersForJobResponse?> getWashersForJob({
    required String jobId,
  }) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/$jobId/washers',
    );

    if (response.statusCode == 200) {
      return WashersForJobResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> updateJob({
    required String id,
    required UpdateJobRequest request,
  }) async {
    Response response = await RequestFactory.executePut(
      endpoint: '/jobs/details/$id',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
