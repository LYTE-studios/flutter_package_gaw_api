import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/core/response_models/id_response.dart';
import 'package:flutter_package_gaw_api/src/features/washers/request_models/stats_request.dart';
import 'package:flutter_package_gaw_api/src/features/washers/response_models/weekly_statistics_list_response.dart';
import 'package:flutter_package_gaw_api/src/features/washers/response_models/yearly_statistics_list_response.dart';

import '../core/utils/request_factory.dart';

class WashersApi {
  static Future<IdResponse?> registerWasher(
      {required RegisterRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/washers/register',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return IdResponse.fromJson(response.data);
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
      String responseData = json.encode(response.data);
      //print(responseData);
      return WeeklyStatisticsListResponse.fromJson(responseData);
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
      String responseData = json.encode(response.data);
      return YearlyStatisticsListResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /*static Future<WasherStatistics> getStatisticsForWasher(
      {required String washerId}) async {
    return WasherStatistics(
      (b) => b
        ..timespan = Timespan.monthly
        ..jobsDone = 5
        ..jobsScheduled = 3
        ..averageHours = 22
        ..averageChange = -6
        ..charts = [
          WasherChart(
            (b) => b
              ..totalHours = 8
              ..totalChange = 22
              ..chart = <WeightedDouble>[
                WeightedDouble(
                  (b) => b
                    ..weight = 0
                    ..value = 9,
                ),
                WeightedDouble(
                  (b) => b
                    ..weight = 1
                    ..value = 1,
                ),
                WeightedDouble(
                  (b) => b
                    ..weight = 2
                    ..value = 8,
                ),
                WeightedDouble(
                  (b) => b
                    ..weight = 3
                    ..value = 4,
                ),
                WeightedDouble(
                  (b) => b
                    ..weight = 4
                    ..value = 0,
                ),
              ],
          ),
        ],
    );
  }*/
}
