import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';

class RequestFactory {
  static Dio mainClient = Dio();

  static const Duration defaultTimeout = Duration(
    seconds: 100,
  );

  static Map<String, String> baseHeaders = {
    'Client': Configuration.clientSecret,
    'Access-Control-Allow-Origin': '*',
  };

  static Future<Response> _performCall(
    Future<Response> Function(Options options) call, {
    bool authorize = true,
    bool isMultiform = false,
  }) async {
    Map<String, String> headers = {...baseHeaders};

    if (authorize) {
      await _authenticate();
      headers['Authorization'] = Configuration.accessToken!;
    }

    return await call.call(Options(
      headers: headers,
      validateStatus: (int? status) {
        if (status == 500) {
          return false;
        }

        if (status == 503) {
          return false;
        }

        return true;
      },
      receiveTimeout: defaultTimeout,
      persistentConnection: true,
      contentType: isMultiform ? 'multipart/form-data' : null,
    ));
  }

  static Future<void> _authenticate() async {
    if (Configuration.accessToken == null ||
        Configuration.refreshToken == null) {
      final tokens = await LocalStorageUtil.getTokens();
      Configuration.accessToken = tokens[LocalStorageUtil.kToken];
      Configuration.refreshToken = tokens[LocalStorageUtil.kRefreshToken];
      Configuration.sessionExpiry =
          int.tryParse(tokens[LocalStorageUtil.kSessionExpiry] ?? '');
    }

    if (Configuration.accessToken == null) {
      throw Exception('No access token');
    }

    if (Configuration.refreshToken == null) {
      throw Exception('No refresh token');
    }

    if (AuthenticationApi.isExpiredSession()) {
      Configuration.onExpireSession?.call();
      return;
    }

    if (!AuthenticationApi.isRefreshTokenExpired(Configuration.accessToken!)) {
      return;
    }

    Response response = await executePost(
      endpoint: '/token/refresh/',
      body: {
        'refresh': Configuration.refreshToken,
      },
      useToken: false,
    );

    if (response.statusCode == 200) {
      Configuration.accessToken = response.data['access'];
      Configuration.refreshToken = response.data['refresh'];
    } else {
      throw DioException(requestOptions: RequestOptions(), response: response);
    }
  }

  static Future<Response> executeGet({
    required String endpoint,
    bool useToken = true,
    bool useRefreshToken = false,
  }) async {
    return await _performCall(
      (Options options) {
        return mainClient.get(
          '${Configuration.apiUrl}$endpoint',
          options: options,
        );
      },
      authorize: useToken,
    );
  }

  static Future<Response> executeDelete({
    required String endpoint,
    bool useToken = true,
  }) async {
    return await _performCall(
      (Options options) {
        return mainClient.delete(
          '${Configuration.apiUrl}$endpoint',
          options: options,
        );
      },
      authorize: useToken,
    );
  }

  static Future<Response> executePut({
    required String endpoint,
    dynamic body,
    bool useToken = true,
  }) async {
    return await _performCall(
      (Options options) {
        return mainClient.put(
          '${Configuration.apiUrl}$endpoint',
          data: body,
          options: options,
        );
      },
      authorize: useToken,
    );
  }

  static Future<Response> executePost({
    required String endpoint,
    dynamic body,
    bool useToken = true,
  }) async {
    return await _performCall(
      (Options options) {
        return mainClient.post(
          '${Configuration.apiUrl}$endpoint',
          data: body,
          options: options,
        );
      },
      authorize: useToken,
    );
  }

  static Future<Response> imagePost({
    required String endpoint,
    required FormData body,
    bool useToken = true,
    bool useRefreshToken = false,
  }) async {
    return await _performCall(
      (Options options) {
        return mainClient.post(
          '${Configuration.apiUrl}$endpoint',
          data: body,
          options: options,
        );
      },
      authorize: useToken,
      isMultiform: true,
    );
  }
}
