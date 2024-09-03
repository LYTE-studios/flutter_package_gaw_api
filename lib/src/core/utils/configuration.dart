class Configuration {
  // EMPTY SECRET
  static String clientSecret = '';

  // DEFAULT URL
  static String apiUrl = 'https://api.getawash.lytestudios.be';

  // AUTHENTICATION
  static String? accessToken;
  static String? refreshToken;

  static int? sessionExpiry;
  static int? sessionDuration;
  static Function()? onExpireSession;
}
