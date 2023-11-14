import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/flutter_package_gaw_api.dart';

class RequestFactory {
  static Dio mainClient = Dio();

  static const Duration defaultTimeout = Duration(
    seconds: 100,
  );

  static Map<String, String> baseHeaders = {
    'Client': Configuration.clientSecret,
  };

  static Future<void> _authenticate() async {
    if (Configuration.accessToken == null) {
      throw Exception('No access token');
    }

    if (Configuration.refreshToken == null) {
      throw Exception('No refresh token');
    }

    if (!AuthenticationApi.isRefreshTokenExpired(Configuration.accessToken!)) {
      return;
    }

    Response response = await mainClient.post(
      '${Configuration.apiUrl}/token/refresh',
      data: {
        'refresh': Configuration.refreshToken,
      },
      options: Options(
        contentType: 'application/json',
        headers: baseHeaders,
        receiveTimeout: defaultTimeout,
      ),
    );

    if (response.statusCode == 200) {
      Configuration.accessToken = response.data['access_token'];
      Configuration.refreshToken = response.data['refresh_token'];
    } else {
      throw DioException(requestOptions: RequestOptions(), response: response);
    }
  }

  static Future<Response> executeGet({
    required String endpoint,
    bool useToken = true,
    bool useRefreshToken = false,
  }) async {
    Map<String, String> headers = baseHeaders;

    if (useToken) {
      if (Configuration.accessToken == null) {
        throw Exception('No token found');
      }

      _authenticate();
      headers['Authorization'] = Configuration.accessToken!;
    }

    return await mainClient.get(
      '${Configuration.apiUrl}$endpoint',
      options: Options(
        headers: headers,
        receiveTimeout: defaultTimeout,
      ),
    );
  }

  static Future<Response> executePost({
    required String endpoint,
    dynamic body,
    bool useToken = true,
    bool useRefreshToken = false,
  }) async {
    Map<String, String> headers = baseHeaders;

    if (useToken) {
      if (Configuration.accessToken == null) {
        throw Exception('No token found');
      }

      _authenticate();
      headers['Authorization'] = Configuration.accessToken!;
    }

    return await mainClient.post(
      '${Configuration.apiUrl}$endpoint',
      data: body,
      options: Options(
        contentType: 'application/json',
        headers: headers,
        receiveTimeout: defaultTimeout,
      ),
    );
  }
}
