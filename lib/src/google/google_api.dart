import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:gaw_api/gaw_api.dart';
import 'package:gaw_api/src/core/utils/request_factory.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleApi {
  static Future<PlaceAutocompleteResponse?> autocomplete(String query) async {
    if (query.isEmpty) {
      return null;
    }

    String url = '/jobs/autocomplete/$query';

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      return PlaceAutocompleteResponse.fromJson(
        FormattingUtil.decode(response.data),
      );
    }

    throw DioException(requestOptions: RequestOptions(), response: response);
  }

  static Future<LatLng?> geocodeAddress(String request) async {
    String url = '/jobs/geocode/$request';

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      final data = FormattingUtil.decode(response.data);

      if (data['results'].isNotEmpty) {
        try {
          final latLng = data['results'][0]['geometry']['location'];

          return LatLng(latLng['lat'], latLng['lng']);
        } catch (e) {
          throw Exception('Coordinates found, but could not parse');
        }
      }
    }
    return null;
  }

  /// Get the reverse geocoding for an address
  static Future<String> getReverseGeocodingAddress(
    double latitude,
    double longitude,
  ) async {
    String url = '/jobs/reverse_geocode/$latitude,$longitude';

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      final data = FormattingUtil.decode(response.data);

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
  }

  static Future<List<LatLng>> getDirections({
    required LatLng from,
    required LatLng to,
  }) async {
    int parseInt(double value) {
      return (value * 1000000).toInt();
    }

    int fromLat = parseInt(from.latitude);
    int fromLon = parseInt(from.longitude);
    int toLat = parseInt(to.latitude);
    int toLon = parseInt(to.longitude);

    String url = '/jobs/directions/$fromLat/$fromLon/$toLat/$toLon';

    Response response = await RequestFactory.executeGet(
      endpoint: url,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.data);

      List<PointLatLng> pointList = PolylinePoints().decodePolyline(
        jsonData["routes"][0]["polyline"]["encodedPolyline"],
      );
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
