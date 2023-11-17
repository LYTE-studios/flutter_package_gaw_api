library jobs_api;

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
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
      String responseData = json.encode(response.data);
      return ApplicationListResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Job?> getJob({required String id}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/details/$id',
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return Job.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Gets the upcoming jobs for which a washer can apply
  static Future<JobListResponse?> getUpcomingJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/upcoming',
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return JobListResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JobListResponse?> getHistoryJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/history',
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return JobListResponse.fromJson(responseData);
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
      String responseData = json.encode(response.data);
      return JobListResponse.fromJson(responseData);
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
      String responseData = json.encode(response.data);
      return TimeRegistrationListResponse.fromJson(responseData);
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
      String responseData = json.encode(response.data);
      return TimeRegistrationResponse.fromJson(responseData);
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
      String responseData = json.encode(response.data);
      return TimeRegistrationResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
