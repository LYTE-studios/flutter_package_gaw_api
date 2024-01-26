library users_api;

import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'request_models/update_fcm_token_request.dart';
export 'request_models/update_language_request.dart';
export 'request_models/update_user_request.dart';
export 'response_models/hello_there_response.dart';
export 'response_models/me_response.dart';
export 'response_models/update_user_response.dart';

class UsersApi {
  /// Gets the hello there data for a user
  static Future<HelloThereResponse?> helloThere() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/hello/there',
    );

    if (response.statusCode == 200) {
      return HelloThereResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<MeResponse?> me() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/users/me',
    );

    if (response.statusCode == 200) {
      return MeResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> uploadProfilePicture(
    Uint8List image, {
    String? userId,
  }) async {
    String url = '/upload_image';

    if (userId != null) {
      url += '/$userId';
    }

    Uint8List compressedBytes = await FlutterImageCompress.compressWithList(
      image,
      format: CompressFormat.png,
    );

    final formData = FormData.fromMap(
      {
        "file": MultipartFile.fromBytes(compressedBytes),
      },
    );

    Response response = await RequestFactory.multiformPost(
      endpoint: url,
      body: formData,
    );

    if (response.statusCode != 204) {
      throw DioException(requestOptions: RequestOptions(), response: response);
    }
  }

  static Future<UpdateUserResponse?> update(
      UpdateUserRequest updateUser) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/users/details/update',
      body: updateUser.toJson(),
    );

    if (response.statusCode == 200) {
      return UpdateUserResponse.fromJson(FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<UpdateLanguageRequest?> updateLanguage(
      UpdateLanguageRequest updateLanguage) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/users/settings/language/update',
      body: updateLanguage.toJson(),
    );

    if (response.statusCode == 200) {
      return UpdateLanguageRequest.fromJson(
          FormattingUtil.decode(response.data));
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<Uint8List?> fetchProfilePicture(
      String profilePictureUrl) async {
    var dio = Dio();
    final response = await dio.get(
      Configuration.apiUrl + profilePictureUrl,
      options: Options(responseType: ResponseType.bytes),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load image');
    }

    return Uint8List.fromList(response.data);
  }

  static Future<void> removeProfilePicture() async {
    Response response = await RequestFactory.executePost(
      endpoint: '/remove_profile_picture',
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<void> updateFcmToken(
      {required UpdateFcmTokenRequest request}) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/users/fcm',
      body: request.toJson(),
    );

    if (response.statusCode == 200) {
      return;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
