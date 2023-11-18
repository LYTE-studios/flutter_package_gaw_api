import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getWeeklyStatisticsProvider =
    FutureProvider.family<WeeklyStatisticsListResponse?, StatsRequest>(
  (ref, StatsRequest request) {
    return WashersApi.getWeeklyStatistics(request: request);
  },
);

final getYearlyStatisticsProvider =
    FutureProvider.family<YearlyStatisticsListResponse?, StatsRequest>(
  (ref, StatsRequest request) {
    return WashersApi.getYearlyStatistics(request: request);
  },
);
