import 'package:localstorage/localstorage.dart';

class LocalStorageUtil {
  static LocalStorage mainStorage = LocalStorage('me');

  static const String kToken = 'token';

  static const String kRefreshToken = 'refresh_token';

  static Future<void> reset() async {
    await mainStorage.ready;
    await mainStorage.clear();
  }

  static Future<void> setTokens(String? token, String? refreshToken) async {
    await mainStorage.setItem(LocalStorageUtil.kToken, token);
    await mainStorage.setItem(LocalStorageUtil.kRefreshToken, refreshToken);
  }

  static Future<Map<String, String?>> getTokens() async {
    Map<String, String?> tokens = {};

    tokens[LocalStorageUtil.kToken] =
        await mainStorage.getItem(LocalStorageUtil.kToken);
    tokens[LocalStorageUtil.kRefreshToken] =
        await mainStorage.getItem(LocalStorageUtil.kRefreshToken);

    return tokens;
  }
}
