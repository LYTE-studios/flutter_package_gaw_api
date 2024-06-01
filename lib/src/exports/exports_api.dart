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
      '/exports',
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

  static Future<void> refreshExports() async {
    String url = '/exports';

    Response response = await RequestFactory.executePost(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
