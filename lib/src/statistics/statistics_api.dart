library statistics_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/formatting_util.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'enums/time_frame.dart';
export 'models/daily_statistics.dart';
export 'models/general_statistics.dart';
export 'models/monthly_statistics.dart';
export 'models/weekly_statistics.dart';
export 'models/yearly_statistics.dart';
export 'request_models/stats_request.dart';
export 'response_models/admin_statistics_overview_response.dart';
export 'response_models/weekly_statistics_list_response.dart';
export 'response_models/yearly_statistics_list_response.dart';

class StatisticsApi {
  static Future<AdminStatisticsOverviewResponse?> getAdminStatistics({
    required int startTime,
    required int endTime,
  }) async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/statistics/overview/$startTime/$endTime',
    );

    if (response.statusCode == 200) {
      return AdminStatisticsOverviewResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
