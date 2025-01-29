library authentication_api;

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';

export 'request_models/password/code_verification_request.dart';
export 'request_models/password/email_request.dart';
export 'request_models/password/password_reset_request.dart';
export 'request_models/settings/session_expiry_request.dart';
export 'request_models/sign_in/login_request.dart';
export 'request_models/sign_in/refresh_request.dart';
export 'request_models/sign_in/register_request.dart';
export 'response_models/jwt_response.dart';
export 'response_models/pass_token_response.dart';
export 'response_models/session_expiry_response.dart';

class AuthenticationApi {
  static Future<bool> testConnection() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/auth/hello/there',
    );

    if (response.statusCode == 200) {
      SessionExpiryResponse? expiryResponse = SessionExpiryResponse.fromJson(
        FormattingUtil.decode(response.data),
      );

      Configuration.sessionDuration = expiryResponse?.sessionDuration;

      return true;
    }

    return false;
  }

  static Future<JwtResponse?> credentialsLogin({
    required LoginRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/token/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      JwtResponse jwtResponse = JwtResponse.fromJson(
        FormattingUtil.decode(response.data),
      )!;

      Configuration.accessToken = jwtResponse.accessToken;
      Configuration.refreshToken = jwtResponse.refreshToken;
      Configuration.sessionExpiry = jwtResponse.sessionExpiry;

      await LocalStorageUtil.setTokens(
        jwtResponse.accessToken,
        jwtResponse.refreshToken,
        sessionExpiry: jwtResponse.sessionExpiry,
      );

      return jwtResponse;
    }

    if (response.statusCode == 405) {
      throw const GawException(
        title: 'Not yet accepted!',
        message: 'Please await for an admin to approve your application',
      );
    }

    if (response.statusCode == 401) {
      throw const GawException(
        title: 'Invalid credentials!',
        message: 'Please check your email password combination.',
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<String?> verifyRegistration({
    required String email,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/registrations/verify',
      body: {
        "email": email,
      },
      useToken: false,
    );

    if (response.statusCode == 200) {
      return null;
    } else if (response.statusCode == 409) {
      return "User already exists";
    } else if (response.statusCode == 400) {
      return "Invalid email";
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
      endpoint: '/auth/token/refresh/',
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
        sessionExpiry: jwtResponse.sessionExpiry,
      );

      return jwtResponse;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<bool> sendPasswordResetEmail({
    required EmailRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/password_reset/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      return true;
    }

    throw Exception('Something went wrong');
  }

  static Future<PassTokenResponse?> verifyPasswordResetCode({
    required CodeVerificationRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/password_reset/verify/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      PassTokenResponse passTokenResponse = PassTokenResponse.fromJson(
        FormattingUtil.decode(response.data),
      )!;

      return passTokenResponse;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<SessionExpiryResponse?> getExpirySession() async {
    Response response = await RequestFactory.executeGet(
      endpoint: '/auth/settings/session/',
    );

    if (response.statusCode == 200) {
      return SessionExpiryResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<SessionExpiryResponse?> updateExpirySession({
    required int? duration,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/settings/session/',
      body: SessionExpiryRequest(
        (b) => b..sessionDuration = duration,
      ).toJson(),
    );

    if (response.statusCode == 200) {
      SessionExpiryResponse? expiryResponse = SessionExpiryResponse.fromJson(
        FormattingUtil.decode(response.data),
      );

      Configuration.sessionExpiry = expiryResponse?.sessionExpiry;

      LocalStorageUtil.setTokens(
        Configuration.accessToken,
        Configuration.refreshToken,
        sessionExpiry: Configuration.sessionExpiry,
      );

      return expiryResponse;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<bool> resetPassword({
    required PasswordResetRequest request,
  }) async {
    Response response = await RequestFactory.executePost(
      endpoint: '/auth/password_reset/reset/',
      body: request.toJson(),
      useToken: false,
    );

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }

  static bool isExpiredSession() {
    int? expirySeconds = Configuration.sessionExpiry;

    if (expirySeconds == null) {
      return false;
    }

    if (expirySeconds == 0) {
      return false;
    }

    final expiry = DateTime.fromMillisecondsSinceEpoch(0).add(
      Duration(
        seconds: expirySeconds,
      ),
    );

    return expiry.isBefore(
      DateTime.now(),
    );
  }

  static bool isRefreshTokenExpired(String tokenToCheck) {
    final parts = tokenToCheck.split('.');
    if (parts.length != 3) {
      return false; // Not a valid token format
    }

    final payload = json
        .decode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
    final expiry = DateTime.fromMillisecondsSinceEpoch(0)
        .add(Duration(seconds: int.tryParse(payload['exp'].toString()) ?? 0));

    return expiry.isBefore(
      DateTime.now().add(
        const Duration(
          minutes: 1,
        ),
      ),
    );
  }
}
