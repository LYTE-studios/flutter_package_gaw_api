library notifications_api;

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:gaw_api/src/core/utils/formatting_util.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';
import 'package:gaw_api/src/notifications/request_models/notifications_request.dart';
import 'package:gaw_api/src/notifications/request_models/notifications_update_request.dart';
import 'package:gaw_api/src/notifications/response_models/notifications_list_response.dart';

export 'request_models/notifications_request.dart';
export 'request_models/notifications_update_request.dart';
export 'response_models/notifications_list_response.dart';
export 'models/notification.dart';

class NotificationsApi {
  static Future<NotificationsListResponse?> getNotifications() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/notifications/notifications',
    );

    if (response.statusCode == 200) {
      return NotificationsListResponse.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> postNotification(
      {required NotificationsRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/notifications',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> readAllNotifications() async {
    Response response = await RequestFactory.executePut(
      endpoint: '/notifications/notifications/read-all',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> updateNotification(
      {required NotificationsUpdateRequest request}) async {
    Response response = await RequestFactory.executePut(
      endpoint: '/notifications',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
