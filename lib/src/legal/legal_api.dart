library legal_api;

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'models/dimona.dart';
export 'response_models/dimona_list_response.dart';

class LegalApi {
  static Future<DimonaListResponse?> getDimonas({
    int? page,
    int? itemCount,
  }) async {
    String url = '/dimonas/$itemCount/$page';

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return DimonaListResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
