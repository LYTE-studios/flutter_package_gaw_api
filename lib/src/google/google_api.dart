import 'package:dio/dio.dart';
import 'package:gaw_api/gaw_api.dart';

class GoogleApi {
  static Future<dynamic> fetchUrl(Map<String, String>? headers) async {
    Dio dio = Dio();

    String url = '${Configuration.googleApiUrl}/place/textsearch/json';

    Response response = await dio.get(
      url,
      queryParameters: headers,
    );

    if (response.statusCode == 200) {
      return response.data;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  /// Get the reverse geocoding for an address
  static Future<String> getReverseGeocodingAddress(
    double latitude,
    double longitude,
  ) async {
    Dio dio = Dio();

    String url = '${Configuration.googleApiUrl}/geocode/json';

    try {
      var response = await dio.get(
        url,
        queryParameters: {
          'latlng': '$latitude,$longitude',
          'key': Configuration.googleApiKey,
        },
      );
      if (response.statusCode == 200) {
        final data = response.data;

        // Assuming the response format is correct and contains results
        if (data['results'].isNotEmpty) {
          // Typically, the first result is the most relevant address
          String formattedAddress = data['results'][0]['formatted_address'];
          return formattedAddress;
        } else {
          throw Exception('No results found for these coordinates.');
        }
      } else {
        throw Exception('Failed to fetch reverse geocoding data.');
      }
    } catch (e) {
      return 'Failed to get the address.';
    }
  }
}
