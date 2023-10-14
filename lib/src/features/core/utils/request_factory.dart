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

  static Future<Response> executeGet({
    required String endpoint,
    bool useToken = true,
  }) async {
    Map<String, String> headers = baseHeaders;

    if (useToken && Configuration.token != null) {
      headers['Authorization'] = Configuration.token!;
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
  }) async {
    Map<String, String> headers = baseHeaders;

    if (useToken && Configuration.token != null) {
      headers['Authorization'] = Configuration.token!;
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
