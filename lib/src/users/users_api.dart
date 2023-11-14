import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_package_gaw_api/src/users/request_models/update_language_request.dart';
import 'package:flutter_package_gaw_api/src/users/request_models/update_user_request.dart';
import 'package:flutter_package_gaw_api/src/users/response_models/hello_there_response.dart';
import 'package:flutter_package_gaw_api/src/users/response_models/me_response.dart';
import 'package:flutter_package_gaw_api/src/users/response_models/update_user_response.dart';

import '../features/core/utils/request_factory.dart';

class UsersApi {
  /// Gets the hello there data for a user
  static Future<HelloThereResponse?> helloThere() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/hello/there',
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return HelloThereResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future <MeResponse?> me() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/users/me',
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return MeResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future <UpdateUserResponse?> update(UpdateUserRequest updateUser) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/users/detils/update',
      body: updateUser.toJson(),
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return UpdateUserResponse.fromJson(responseData);
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<UpdateLanguageRequest?> updateLanguage(UpdateLanguageRequest updateLanguage) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/users/settings/language/update',
      body: updateLanguage.toJson(),
    );

    if (response.statusCode == 200) {
      String responseData = json.encode(response.data);
      return UpdateLanguageRequest.fromJson(responseData);
    }    

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}