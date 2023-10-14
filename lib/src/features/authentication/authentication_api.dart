import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';
import 'package:flutter_package_gaw_api/src/features/core/utils/request_factory.dart';

class AuthenticationApi {
  static Future<bool> testConnection() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/',
    );

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  static Future<TokenResponse?> credentialsLogin({
    required LoginRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/token',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      return TokenResponse.fromJson(response.data);
    }

    if (response.statusCode == 403) {
      return null;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<TokenResponse?> credentialsRegister({
    required RegisterRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/register',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      return TokenResponse.fromJson(response.data);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
