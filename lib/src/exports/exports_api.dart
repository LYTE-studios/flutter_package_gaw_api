import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/export.dart';
export 'response_models/exports_list_response.dart';

class ExportsApi {
  static Future<ExportsListResponse?> getExports({
    int? page,
    int? itemCount,
    String? sortTerm,
    bool ascending = false,
  }) async {
    String url = FormattingUtil.formatUrlParameters(
      '/jobs/exports',
      page: page,
      itemCount: itemCount,
      sortTerm: sortTerm,
      ascending: ascending,
    );

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );
    if (response.statusCode == 200) {
      return ExportsListResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> refreshExports({
    int? startTime,
    int? endTime,
  }) async {
    String url = '/jobs/exports';

    String? body;

    if (startTime != null && endTime != null) {
      body = jsonEncode({
        'start_time': startTime,
        'end_time': endTime,
      });
    }

    Response response = await RequestFactory.executePost(
      endpoint: url,
      body: body,
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
