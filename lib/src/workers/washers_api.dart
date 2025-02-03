library Workers_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/worker.dart';
export 'request_models/worker_update_request.dart';
export 'response_models/workers_list_response.dart';

/// Workers API class
class WorkersApi {
  static Future<WorkersListResponse?> getWorkers({
    int? page,
    int? itemCount,
    String? searchTerm,
    String? sortTerm,
    bool ascending = false,
    bool showRegistered = false,
  }) async {
    String prefix = '';

    if (showRegistered) {
      prefix = '/registered';
    }

    String url = '$prefix/workers';

    if (page != null && itemCount != null) {
      url = '$prefix/auth/workers/$itemCount/$page';

      if (sortTerm?.isNotEmpty ?? false) {
        if (ascending) {
          url = '$prefix/auth/workers/$sortTerm/ascending/$itemCount/$page';
        } else {
          url = '$prefix/auth/workers/$sortTerm/descending/$itemCount/$page';
        }
      }

      if (searchTerm?.isNotEmpty ?? false) {
        url = '$prefix/auth/workers/$itemCount/$page/$searchTerm';
      }
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return WorkersListResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> acceptWorker({required String id}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/accept/auth/workers/$id',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> deleteWorker({required String id}) async {
    Response response = await RequestFactory.executeDelete(
      endpoint: '/auth/workers/details/$id',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Register a Worker
  static Future<IdResponse?> registerWorker(
      {required RegisterRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/auth/workers/register',
      useToken: false,
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return IdResponse.fromJson(FormattingUtil.decode(response.data));
    }

    if (response.statusCode == 405) {
      throw const GawException(
        message: 'A user with this email address has already registered',
        title: 'Email in use!',
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> updateWorker({
    required String id,
    required WorkerUpdateRequest request,
  }) async {
    Response response = await RequestFactory.executePut(
      endpoint: '/auth/workers/details/$id',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Worker?> getWorker({required String id}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/auth/workers/details/$id',
    );

    if (response.statusCode == 200) {
      return Worker.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<WeeklyStatisticsListResponse?> getWeeklyStatistics(
      {required StatsRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/workers/statistics/me',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return WeeklyStatisticsListResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<YearlyStatisticsListResponse?> getYearlyStatistics(
      {required StatsRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/workers/statistics/me',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return YearlyStatisticsListResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Response?> uploadSignatures(
      {required FormData formData}) async {
    Response response = await RequestFactory.imagePost(
      endpoint: '/jobs/timeregistration/sign',
      body: formData,
    );

    if (response.statusCode == 200) {
      return response;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
