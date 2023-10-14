import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/core/models/timespan.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/washer_chart.dart';
import 'package:flutter_package_gaw_api/src/features/washers/models/washer_statistics.dart';

class WashersApi {
  static Future<WasherStatistics> getStatisticsForWasher(
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
  }
}
