library washers_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/washer.dart';
export 'request_models/washer_update_request.dart';
export 'response_models/washers_list_response.dart';

/// Washers API class
class WashersApi {
  static Future<WashersListResponse?> getWashers({
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

    String url = '$prefix/washers';

    if (page != null && itemCount != null) {
      url = '$prefix/washers/$itemCount/$page';

      if (sortTerm?.isNotEmpty ?? false) {
        if (ascending) {
          url = '$prefix/washers/$sortTerm/ascending/$itemCount/$page';
        } else {
          url = '$prefix/washers/$sortTerm/descending/$itemCount/$page';
        }
      }

      if (searchTerm?.isNotEmpty ?? false) {
        url = '$prefix/washers/$itemCount/$page/$searchTerm';
      }
    }

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return WashersListResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> acceptWasher({required String id}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/accept/washers/$id',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> deleteWasher({required String id}) async {
    Response response = await RequestFactory.executeDelete(
      endpoint: '/washers/details/$id',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Register a washer
  static Future<IdResponse?> registerWasher(
      {required RegisterRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/washers/register',
      useToken: false,
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return IdResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> updateWasher({
    required String id,
    required WasherUpdateRequest request,
  }) async {
    Response response = await RequestFactory.executePut(
      endpoint: '/washers/details/$id',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Washer?> getWasher({required String id}) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/washers/details/$id',
    );

    if (response.statusCode == 200) {
      return Washer.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<WeeklyStatisticsListResponse?> getWeeklyStatistics(
      {required StatsRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/washers/statistics/me',
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
      endpoint: '/washers/statistics/me',
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
