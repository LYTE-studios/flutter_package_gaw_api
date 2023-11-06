import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/request_factory.dart';
import 'package:flutter_package_gaw_api/src/features/jobs/transfer_models/application_list_response.dart';

class JobsApi {

  /// Gets the washers job applications
  static Future<ApplicationListResponse?> getMyApplications() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/applications/me',
    );

    if (response.statusCode == 200) {
      return ApplicationListResponse.fromJson(response.data);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Gets the upcoming jobs for which a washer can apply
  static Future<JobListResponse?> getUpcomingJobs() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/jobs/upcoming',
    );

    if (response.statusCode == 200) {
      return JobListResponse.fromJson(response.data);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
