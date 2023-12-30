library washers_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/formatting_util.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/washer.dart';
export 'response_models/washers_list_response.dart';

class WashersApi {
  static Future<WashersListResponse?> getWashers() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/washers',
    );

    if (response.statusCode == 200) {
      return WashersListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

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
    Response response = await RequestFactory.multiformPost(
      endpoint: '/jobs/timeregistration/sign',
      body: formData,
    );

    if (response.statusCode == 200) {
      return response;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}