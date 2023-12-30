library authentication_api;

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/formatting_util.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'request_models/password/code_verification_request.dart';
export 'request_models/password/email_request.dart';
export 'request_models/password/password_reset_request.dart';
export 'request_models/sign_in/login_request.dart';
export 'request_models/sign_in/refresh_request.dart';
export 'request_models/sign_in/register_request.dart';
export 'response_models/jwt_response.dart';
export 'response_models/pass_token_response.dart';

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

  static Future<JwtResponse?> credentialsLogin({
    required LoginRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      JwtResponse jwtResponse =
          JwtResponse.fromJson(FormattingUtil.decode(response.data))!;

      Configuration.accessToken = jwtResponse.accessToken;
      Configuration.refreshToken = jwtResponse.refreshToken;

      await LocalStorageUtil.setTokens(
        jwtResponse.accessToken,
        jwtResponse.refreshToken,
      );

      return jwtResponse;
    }

    if (response.statusCode == 403) {
      return null;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<JwtResponse?> refreshToken({
    required String refreshToken,
  }) async {
    if (isRefreshTokenExpired(refreshToken)) {
      throw Exception("Refresh token is expired. User needs to re-login.");
    }

    RefreshRequest refreshRequest =
        RefreshRequest((b) => b..refreshToken = refreshToken);
    Response response = await RequestFactory.executePost(
      endpoint: '/token/refresh',
      body: refreshRequest.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      JwtResponse jwtResponse = JwtResponse.fromJson(
        FormattingUtil.decode(response.data),
      )!;

      Configuration.accessToken = jwtResponse.accessToken;
      Configuration.refreshToken = jwtResponse.refreshToken;

      await LocalStorageUtil.setTokens(
        jwtResponse.accessToken,
        jwtResponse.refreshToken,
      );

      return jwtResponse;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<bool> sendPasswordResetEmail({
    required EmailRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/password_reset/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  static Future<PassTokenResponse?> verifyPasswordResetCode({
    required CodeVerificationRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/password_reset/verify/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      PassTokenResponse passTokenResponse =
          PassTokenResponse.fromJson(FormattingUtil.decode(response.data))!;

      return passTokenResponse;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<bool> resetPassword({
    required PasswordResetRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/password_reset/reset/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  static bool isRefreshTokenExpired(String tokenToCheck) {
    final parts = tokenToCheck.split('.');
    if (parts.length != 3) {
      return true; // Not a valid token format
    }

    final payload = json
        .decode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
    final expiry = DateTime.fromMillisecondsSinceEpoch(0)
        .add(Duration(seconds: int.tryParse(payload['exp'].toString()) ?? 0));

    return expiry.isBefore(
      DateTime.now().subtract(
        const Duration(
          minutes: 1,
        ),
      ),
    );
  }
}
