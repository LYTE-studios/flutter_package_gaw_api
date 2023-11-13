import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/src/users/response_models/hello_there_response.dart';

import '../features/core/utils/request_factory.dart';

class UsersApi {
  /// Gets the hello there data for a user
  static Future<HelloThereResponse?> helloThere() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/applications/me',
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return HelloThereResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
