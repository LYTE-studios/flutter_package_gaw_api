class Configuration {
  // EMPTY SECRET
  static String clientSecret = '';

  // DEFAULT URL
  static String apiUrl = 'https://api.getawash.lytestudios.be';
  static String corsUrl =
      'https://afternoon-shelf-98562-9b091c31305c.herokuapp.com/';

  // Google API
  static String googleApiUrl = 'https://maps.googleapis.com';
  static String routesGoogleApiUrl = 'https://routes.googleapis.com';
  static String googleApiKey = '';

  // AUTHENTICATION
  static String? accessToken;
  static String? refreshToken;

  static int? sessionExpiry;
  static int? sessionDuration;
  static Function()? onExpireSession;
}
