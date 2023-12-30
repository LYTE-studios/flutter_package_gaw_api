import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gaw_api/gaw_api.dart';

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
