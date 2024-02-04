import 'package:gaw_api/gaw_api.dart';
import 'package:localstorage/localstorage.dart';

class LocalStorageUtil {
  static LocalStorage mainStorage = LocalStorage('me');

  static const String kToken = 'token';

  static const String kRefreshToken = 'refresh_token';

  static const String kSessionExpiry = 'session_expiry';

  static Future<void> reset() async {
    await mainStorage.clear();
  }

  static Future<void> setTokens(
    String? token,
    String? refreshToken, {
    int? sessionExpiry,
  }) async {
    await mainStorage.ready;

    await mainStorage.setItem(LocalStorageUtil.kToken, token);
    await mainStorage.setItem(LocalStorageUtil.kRefreshToken, refreshToken);
    if (sessionExpiry != null) {
      await mainStorage.setItem(
          LocalStorageUtil.kSessionExpiry, sessionExpiry.toString());
    }

    Configuration.accessToken = token;
    Configuration.refreshToken = refreshToken;
    Configuration.sessionExpiry = sessionExpiry;
  }

  static Future<Map<String, String?>> getTokens() async {
    Map<String, String?> tokens = {};

    await mainStorage.ready;

    tokens[LocalStorageUtil.kToken] =
        await mainStorage.getItem(LocalStorageUtil.kToken);
    tokens[LocalStorageUtil.kRefreshToken] =
        await mainStorage.getItem(LocalStorageUtil.kRefreshToken);
    tokens[LocalStorageUtil.kSessionExpiry] =
        await mainStorage.getItem(LocalStorageUtil.kSessionExpiry);

    return tokens;
  }
}
