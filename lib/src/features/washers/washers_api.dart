import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/core/response_models/id_response.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/formatting_util.dart';

import '../core/utils/request_factory.dart';

class WashersApi {
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
}
