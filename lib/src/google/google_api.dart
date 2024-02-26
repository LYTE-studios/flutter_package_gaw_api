import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleApi {
  static Future<dynamic> fetchUrl(Map<String, String>? headers) async {
    Dio dio = Dio();

    String url = '${Configuration.googleApiUrl}/maps/api/place/textsearch/json';

    Response response = await dio.get(
      url,
      queryParameters: headers,
    );

    if (response.statusCode == 200) {
      return response.data;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<LatLng?> geocodeAddress(String request) async {
    Dio dio = Dio();

    String url = '${Configuration.googleApiUrl}/maps/api/geocode/json';

    try {
      var response = await dio.get(
        url,
        queryParameters: {
          'address': request,
          'key': Configuration.googleApiKey,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data['results'].isNotEmpty) {
          try {
            final latLng = data['results'][0]['geometry']['location'];

            return LatLng(latLng['lat'], latLng['lng']);
          } catch (e) {
            throw Exception('Coordinates found, but could not parse');
          }
        }
      }
    } catch (e) {
      return null;
    }
  }

  /// Get the reverse geocoding for an address
  static Future<String> getReverseGeocodingAddress(
    double latitude,
    double longitude,
  ) async {
    Dio dio = Dio();

    String url = '${Configuration.googleApiUrl}/maps/api/geocode/json';

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

  static Future<List<LatLng>> getDirections({
    required LatLng from,
    required LatLng to,
  }) async {
    Dio dio = Dio();

    String url =
        '${Configuration.routesGoogleApiUrl}/directions/v2:computeRoutes';

    Response response = await dio.post(
      url,
      queryParameters: {
        "key": Configuration.googleApiKey,
      },
      options: Options(
        headers: {
          "X-Goog-FieldMask": "routes.polyline",
        },
      ),
      data: jsonEncode(
        {
          "origin": {
            "location": {
              "latLng": {
                "latitude": from.latitude,
                "longitude": from.longitude,
              }
            }
          },
          "destination": {
            "location": {
              "latLng": {
                "latitude": to.latitude,
                "longitude": to.longitude,
              }
            }
          },
          "travelMode": "DRIVE",
        },
      ),
    );

    if (response.statusCode == 200) {
      List<PointLatLng> pointList = PolylinePoints().decodePolyline(
          response.data["routes"][0]["polyline"]["encodedPolyline"]);
      List<LatLng> data = [];

      for (PointLatLng point in pointList) {
        data.add(
          LatLng(
            point.latitude,
            point.longitude,
          ),
        );
      }

      return data;
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }
}
