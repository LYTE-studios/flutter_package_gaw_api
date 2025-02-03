import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RequestFactory {
  static Dio mainClient = Dio();

  static const Duration defaultTimeout = Duration(
    seconds: 100,
  );

  static Map<String, String> baseHeaders = {
    'Client': Configuration.clientSecret,
    'Access-Control-Allow-Origin': '*',
  };

  static Future<void> initialize() async {
    await Hive.initFlutter();
  }

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

    Response response = await call.call(Options(
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

    return response;
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
      endpoint: '/auth/token/refresh/',
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

  /// Formats the URL to be used in the request.
  static String formatUrl(String endpoint) {
    // Add a trailing Backslash if none was set.
    if (endpoint.endsWith('/')) {
      endpoint =
          endpoint.replaceRange(endpoint.length - 1, endpoint.length, '');
    }

    if (!endpoint.startsWith('/')) {
      endpoint = '/$endpoint';
    }

    // Add the configured Api Url
    return '${Configuration.apiUrl}$endpoint';
  }

  static Future<Response> executeGet({
    required String endpoint,
    bool useToken = true,
    bool useRefreshToken = false,
    Duration? cacheDuration,
  }) async {
    Box? box;

    if (cacheDuration != null) {
      box = await Hive.openBox<dynamic>('cache');

      if (box.containsKey(endpoint)) {
        Map<dynamic, dynamic> data = box.get(endpoint);

        if (data['created'] == null ||
            (DateTime.now().millisecondsSinceEpoch -
                    ((data['created'] as int?) ?? 0) >
                cacheDuration.inMilliseconds)) {
          await box.delete(endpoint);
        } else {
          return Response(
            data: data['data'],
            statusCode: 200,
            requestOptions: RequestOptions(path: endpoint),
          );
        }
      }
    }

    Response response = await _performCall(
      (Options options) {
        return mainClient.get(
          formatUrl(endpoint),
          options: options,
        );
      },
      authorize: useToken,
    );

    if (box != null && response.statusCode == 200) {
      box.put(
        endpoint,
        {
          'created': DateTime.now().millisecondsSinceEpoch,
          'data': response.data,
        },
      );
    }

    return response;
  }

  static Future<Response> executeDelete({
    required String endpoint,
    bool useToken = true,
  }) async {
    return await _performCall(
      (Options options) {
        return mainClient.delete(
          formatUrl(endpoint),
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
          formatUrl(endpoint),
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
    bool isMultiform = false,
    Duration? cacheDuration,
  }) async {
    Box? box;

    String boxName = '$endpoint/$body';

    if (cacheDuration != null) {
      box = await Hive.openBox<dynamic>('cache');

      if (box.containsKey(boxName)) {
        Map<dynamic, dynamic> data = box.get(boxName);

        if (data['created'] == null ||
            (DateTime.now().millisecondsSinceEpoch -
                    ((data['created'] as int?) ?? 0) >
                cacheDuration.inMilliseconds)) {
          await box.delete(boxName);
        } else {
          return Response(
            data: data['data'],
            statusCode: 200,
            requestOptions: RequestOptions(path: endpoint),
          );
        }
      }
    }

    Response response = await _performCall(
      (Options options) {
        return mainClient.post(
          formatUrl(endpoint),
          data: body,
          options: options,
        );
      },
      authorize: useToken,
      isMultiform: isMultiform,
    );

    if (box != null && response.statusCode == 200) {
      box.put(
        boxName,
        {
          'created': DateTime.now().millisecondsSinceEpoch,
          'data': response.data,
        },
      );
    }

    return response;
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
          formatUrl(endpoint),
          data: body,
          options: options,
        );
      },
      authorize: useToken,
      isMultiform: true,
    );
  }
}
