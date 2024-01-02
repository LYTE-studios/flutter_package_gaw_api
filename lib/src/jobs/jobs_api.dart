library jobs_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/formatting_util.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'enums/job_application_state.dart';
export 'enums/job_state.dart';
export 'models/job.dart';
export 'models/job_application.dart';
export 'models/time_registration.dart';
export 'request_models/apply_for_job_request.dart';
export 'request_models/create_job_request.dart';
export 'request_models/time_registration_request.dart';
export 'request_models/user_based_jobs_request.dart';
export 'response_models/application_list_response.dart';
export 'response_models/job_list_response.dart';
export 'response_models/time_registration_list_response.dart';
export 'response_models/time_registration_response.dart';

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

  static Future<dynamic> fetchUrl(Map<String, String>? headers) async {
    Dio dio = Dio();
    Response response = await dio.get(
      'https://maps.googleapis.com/maps/api/place/textsearch/json',
      queryParameters: headers,
    );

    if (response.statusCode == 200) {
      return response.data;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<String> getReverseGeocodingAddress(
      double lt, double lg, String apiGoogleKey) async {
    Dio dio = Dio();
    // Replace YOUR_API_KEY with your actual Google Maps Geocoding API key
    const String url = 'https://maps.googleapis.com/maps/api/geocode/json';
    try {
      var response = await dio.get(url, queryParameters: {
        'latlng': '$lt,$lg',
        'key': apiGoogleKey,
      });
      if (response.statusCode == 200) {
        final data = response.data;

        // Assuming the response format is correct and contains results
        if (data['results'].isNotEmpty) {
          // Typically, the first result is the most relevant address
          String formattedAddress = data['results'][0]['formatted_address'];
          return formattedAddress;
        } else {
          throw Exception('No results found for these coordinates.');
        }
      } else {
        throw Exception('Failed to fetch reverse geocoding data.');
      }
    } catch (e) {
      print(e.toString());
      return 'Failed to get the address.';
    }
  }
}
