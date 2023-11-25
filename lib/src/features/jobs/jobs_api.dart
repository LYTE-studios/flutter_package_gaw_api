library jobs_api;

import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/formatting_util.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/request_factory.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/request/create_job_request.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/request/time_registration_request.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/request/user_based_jobs_request.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/models/response/time_registration_response.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/transfer_models/time_registration_list_response.dart';

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

  static Future<Job?> getJob({required String id}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/details/$id',
    );

    if (response.statusCode == 200) {
      return Job.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Gets the upcoming jobs for which a washer can apply
  static Future<JobListResponse?> getUpcomingJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/upcoming',
    );

    if (response.statusCode == 200) {
      return JobListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getHistoryJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/history',
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

  static Future<TimeRegistrationResponse?> createTimeRegistration({
    required TimeRegistrationRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/jobs/timeregistration',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return TimeRegistrationResponse.fromJson(
          FormattingUtil.decode(response.data));
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
}
